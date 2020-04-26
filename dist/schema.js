"use strict";
exports.__esModule = true;
var nexus_prisma_1 = require("nexus-prisma");
var schema_1 = require("@nexus/schema");
var User = schema_1.objectType({
    name: 'User',
    definition: function (t) {
        t.model.id();
        t.model.first_name();
        t.model.email();
    }
});
var Post = schema_1.objectType({
    name: 'Post',
    definition: function (t) {
        t.model.id();
        t.model.public();
        t.model.title();
        t.model.text();
        t.model.user_id();
    }
});
var Query = schema_1.objectType({
    name: 'Query',
    definition: function (t) {
        t.crud.post();

        t.list.field('filterPosts', {
            type: 'Post',
            args: {
                searchString: schema_1.stringArg({ nullable: true })
            },
            resolve: function (_, _a, ctx) {
                var searchString = _a.searchString;
                return ctx.prisma.post.findMany({
                    where: {
                        OR: [
                            { title: { contains: searchString } },
                            // @ts-ignore
                            { content: { contains: searchString } },
                        ]
                    }
                });
            }
        });
    }
});
var Mutation = schema_1.objectType({
    name: 'Mutation',
    definition: function (t) {
        t.crud.createOneUser({ alias: 'signupUser' });
        t.crud.deleteOnePost();
        t.field('createDraft', {
            type: 'Post',
            args: {
                title: schema_1.stringArg({ nullable: false }),
                content: schema_1.stringArg(),
                authorEmail: schema_1.stringArg()
            },
            resolve: function (_, _a, ctx) {
                var title = _a.title, content = _a.content, authorEmail = _a.authorEmail;
                return ctx.prisma.post.create({
                    data: {
                        title: title,
                        // @ts-ignore
                        content: content,
                        published: false,
                        author: {
                            connect: { email: authorEmail }
                        }
                    }
                });
            }
        });
        t.field('publish', {
            type: 'Post',
            nullable: true,
            args: {
                id: schema_1.intArg()
            },
            resolve: function (_, _a, ctx) {
                var id = _a.id;
                return ctx.prisma.post.update({
                    where: { id: Number(id) },
                    data: { published: true }
                });
            }
        });
    }
});
exports.schema = schema_1.makeSchema({
    types: [Query, Mutation, Post, User],
    plugins: [nexus_prisma_1.nexusPrismaPlugin()],
    outputs: {
        schema: __dirname + '/../schema.graphql',
        typegen: __dirname + '/generated/nexus.ts'
    },
    typegenAutoConfig: {
        contextType: 'Context.Context',
        sources: [
            {
                source: '@prisma/client',
                alias: 'prisma'
            },
            {
                source: require.resolve('./context'),
                alias: 'Context'
            },
        ]
    }
});
