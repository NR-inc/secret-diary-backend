import { nexusPrismaPlugin } from 'nexus-prisma'
import { makeSchema } from 'nexus'
import * as types from './types';
import * as path from "path";

export const schema = makeSchema({
    types,
    // @ts-ignore
    plugins: [nexusPrismaPlugin()],
    outputs: {
        schema: __dirname + '/../schema.graphql',
        typegen: path.join(
            __dirname,
            '../node_modules/@types/nexus-typegen/index.d.ts',
        ),
    },
    typegenAutoConfig: {
        sources: [
            {
                source: '@prisma/client',
                alias: 'client',
            },
            {
                source: require.resolve('./context'),
                alias: 'Context',
            },
        ],
        contextType: 'Context.Context',
    },
});