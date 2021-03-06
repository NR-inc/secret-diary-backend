import { compare, hash } from 'bcryptjs'
import { sign } from 'jsonwebtoken'
import { mutationType, stringArg, intArg } from 'nexus'
import { APP_SECRET, getUserId } from '../utils'

export const Mutation = mutationType({
    definition(t) {
        t.field('register', {
            type: 'AuthPayload',
            args: {
                firstName: stringArg({ nullable: false }),
                lastName: stringArg({ nullable: false }),
                email: stringArg({ nullable: false }),
                password: stringArg({ nullable: false }),
            },
            resolve: async (_parent, { firstName, lastName, email, password }, ctx) => {
                const hashedPassword = await hash(password, 10);
                const user = await ctx.prisma.user.create({
                    data: {
                        firstName,
                        lastName,
                        email,
                        password: hashedPassword,
                    },
                });

                return {
                    token: sign({ userId: user.id, exp: Math.floor(Date.now() / 1000) + (60 * 60)}, APP_SECRET),
                    user,
                }
            },
        });

        t.field('login', {
            type: 'AuthPayload',
            args: {
                email: stringArg({ nullable: false }),
                password: stringArg({ nullable: false }),
            },
            resolve: async (_parent, { email, password }, ctx) => {
                const user = await ctx.prisma.user.findOne({
                    where: {
                        email,
                    },
                });
                if (!user) {
                    throw new Error(`No user found for email: ${email}`)
                }
                const passwordValid = await compare(password, user.password);
                if (!passwordValid) {
                    throw new Error('Invalid password')
                }
                return {
                    token: sign({ userId: user.id }, APP_SECRET),
                    user,
                }
            },
        });

        t.crud.createOnePost();

        t.field('deletePost', {
            type: 'Post',
            nullable: true,
            args: { id: intArg({ nullable: false }) },
            resolve: (parent, { id }, ctx) => {
                return ctx.prisma.post.delete({
                    where: {
                        id,
                    },
                })
            },
        });
    },
});