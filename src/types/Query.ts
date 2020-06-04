import { intArg, queryType, stringArg } from 'nexus'
import { getUserId } from '../utils'
import moment from 'moment';

export const Query = queryType({
    definition(t) {
        t.field('profile', {
            type: 'User',
            nullable: true,
            resolve: (parent, args, ctx) => {
                const userId = getUserId(ctx);

                return ctx.prisma.user.findOne({
                    where: {
                        id: Number(userId),
                    },
                })
            },
        });

        t.list.field('myPosts', {
            type: 'Post',
            args: {
                authorId: intArg({nullable: false}),
            },
            resolve: (parent, { authorId }, ctx) => {
                return ctx.prisma.post.findMany({
                    where: { authorId },
                })
            },
        });

        t.list.field('publicPosts', {
            type: 'Post',
            resolve: (parent, args, ctx) => {
                return ctx.prisma.post.findMany({
                    where: { public: true },
                })
            },
        });

        t.crud.categories();
    }
});