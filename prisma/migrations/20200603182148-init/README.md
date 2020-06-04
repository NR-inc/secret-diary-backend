# Migration `20200603182148-init`

This migration has been generated at 6/3/2020, 6:21:49 PM.
You can check out the [state of the schema](./schema.prisma) after the migration.

## Database Steps

```sql
CREATE TABLE "public"."Category" (
    "id" SERIAL,
    "slug" text  NOT NULL ,
    "title" text  NOT NULL ,
    PRIMARY KEY ("id")
) 

CREATE TABLE "public"."Post" (
    "authorId" integer  NOT NULL ,
    "createdAt" timestamp(3)  NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "id" SERIAL,
    "public" boolean  NOT NULL DEFAULT false,
    "text" text   ,
    "title" text  NOT NULL ,
    "updatedAt" timestamp(3)  NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY ("id")
) 

CREATE TABLE "public"."User" (
    "avatar" text   ,
    "createdAt" timestamp(3)  NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "email" text  NOT NULL ,
    "firstName" text  NOT NULL ,
    "id" SERIAL,
    "lastName" text  NOT NULL ,
    "password" text  NOT NULL DEFAULT '',
    "updatedAt" timestamp(3)  NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY ("id")
) 

CREATE TABLE "public"."_CategoryToPost" (
    "A" integer  NOT NULL ,
    "B" integer  NOT NULL 
) 

CREATE UNIQUE INDEX "User.email" ON "public"."User"("email")

CREATE UNIQUE INDEX "_CategoryToPost_AB_unique" ON "public"."_CategoryToPost"("A","B")

CREATE  INDEX "_CategoryToPost_B_index" ON "public"."_CategoryToPost"("B")

ALTER TABLE "public"."Post" ADD FOREIGN KEY ("authorId")REFERENCES "public"."User"("id") ON DELETE CASCADE  ON UPDATE CASCADE

ALTER TABLE "public"."_CategoryToPost" ADD FOREIGN KEY ("A")REFERENCES "public"."Category"("id") ON DELETE CASCADE  ON UPDATE CASCADE

ALTER TABLE "public"."_CategoryToPost" ADD FOREIGN KEY ("B")REFERENCES "public"."Post"("id") ON DELETE CASCADE  ON UPDATE CASCADE
```

## Changes

```diff
diff --git schema.prisma schema.prisma
migration ..20200603182148-init
--- datamodel.dml
+++ datamodel.dml
@@ -1,0 +1,39 @@
+generator client {
+  provider = "prisma-client-js"
+}
+
+datasource db {
+  provider = "postgresql"
+  url      = env("DATABASE_URL")
+}
+
+model Category {
+  id    Int    @default(autoincrement()) @id
+  slug  String
+  title String
+  posts Post[] @relation(references: [id])
+}
+
+model Post {
+  id         Int        @default(autoincrement()) @id
+  public     Boolean    @default(false)
+  title      String
+  text       String?
+  authorId   Int
+  author     User       @relation(fields: [authorId], references: [id])
+  categories Category[] @relation(references: [id])
+  createdAt  DateTime   @default(now())
+  updatedAt  DateTime   @default(now())
+}
+
+model User {
+  id         Int      @default(autoincrement()) @id
+  firstName String
+  lastName  String
+  email     String   @unique
+  password  String   @default("")
+  avatar    String?
+  posts     Post[]
+  createdAt DateTime @default(now())
+  updatedAt DateTime @default(now())
+}
```


