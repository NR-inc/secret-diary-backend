import { objectType } from "@nexus/schema";

module.exports.Post = objectType({
    name: 'Post',
    definition(t) {
        t.model.id();
        t.model.public();
        t.model.title();
        t.model.text();
        t.model.user_id();
        t.model.created_at();
        t.model.updated_at();
    },
});
