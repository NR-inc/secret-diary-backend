import { objectType } from "@nexus/schema";

module.exports.User = objectType({
    name: 'User',
    definition(t) {
        t.model.id();
        t.model.first_name();
        t.model.last_name();
        t.model.email();
        t.model.password();
        t.model.avatar();
        t.model.created_at();
        t.model.updated_at();
    },
});

