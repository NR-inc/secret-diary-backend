import { GraphQLServer } from 'graphql-yoga'
import { permissions } from './permissions'
import { schema } from './schema'
import { createContext } from './context'
import dotenv from 'dotenv';

dotenv.config();

new GraphQLServer({
        schema,
        context: createContext,
        middlewares: [permissions],
}).start( () =>
    console.log(
        `🚀 Server ready at: http://localhost:${process.env.PORT}\n⭐️ See sample queries: http://pris.ly/e/ts/graphql-auth#using-the-graphql-api`,
    ),
);