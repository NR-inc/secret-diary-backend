import { objectType } from "@nexus/schema";

module.exports.Post = objectType({
    name: 'Post',
    definition(t) {
        t.model.id();
        t.model.public();
        t.model.title();
        t.model.text();
        t.model.author();
        t.model.createdAt();
        t.model.updatedAt();
    },
});
