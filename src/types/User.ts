import { objectType } from "@nexus/schema";
import moment from "moment";
import {getUserId} from "../utils";

module.exports.User = objectType({
    name: 'User',
    definition(t) {
        t.model.id();
        t.model.firstName();
        t.model.lastName();
        t.model.email();
        t.model.avatar();
        t.model.createdAt();
        t.model.updatedAt();
        t.boolean('canPostToday', {
            resolve: async (root, args, ctx) => {
                let dateOffset = moment().subtract(1, 'day').toDate()
                const posts = await ctx.prisma.user
                    .findOne({
                        where: {id: Number(getUserId(ctx))},
                    })
                    .posts({
                        where: {
                            createdAt: {
                                gt: dateOffset,
                            }
                        }
                    })

                return !Boolean(posts.length);
            }
        });
    }
});

