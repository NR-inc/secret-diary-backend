import { objectType } from "@nexus/schema";

module.exports.Category = objectType({
    name: 'Category',
    definition(t) {
        t.model.id();
        t.model.slug();
        t.model.title();
    },
});
