# Migration `20200426202558-init`

This migration has been generated by Nikita Yunoshev at 4/26/2020, 8:25:58 PM.
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
    "created_at" timestamp(3)  NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "id" SERIAL,
    "public" boolean  NOT NULL DEFAULT false,
    "text" text   ,
    "title" text  NOT NULL ,
    "updated_at" timestamp(3)  NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "user_id" integer  NOT NULL ,
    PRIMARY KEY ("id")
) 

CREATE TABLE "public"."User" (
    "avatar" text   ,
    "created_at" timestamp(3)  NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "email" text  NOT NULL ,
    "first_name" text  NOT NULL ,
    "id" SERIAL,
    "last_name" text  NOT NULL ,
    "password" text  NOT NULL DEFAULT '',
    "updated_at" timestamp(3)  NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY ("id")
) 

CREATE TABLE "public"."_CategoryToPost" (
    "A" integer  NOT NULL ,
    "B" integer  NOT NULL 
) 

CREATE UNIQUE INDEX "User.email" ON "public"."User"("email")

CREATE UNIQUE INDEX "_CategoryToPost_AB_unique" ON "public"."_CategoryToPost"("A","B")

CREATE  INDEX "_CategoryToPost_B_index" ON "public"."_CategoryToPost"("B")

ALTER TABLE "public"."Post" ADD FOREIGN KEY ("user_id")REFERENCES "public"."User"("id") ON DELETE CASCADE  ON UPDATE CASCADE

ALTER TABLE "public"."_CategoryToPost" ADD FOREIGN KEY ("A")REFERENCES "public"."Category"("id") ON DELETE CASCADE  ON UPDATE CASCADE

ALTER TABLE "public"."_CategoryToPost" ADD FOREIGN KEY ("B")REFERENCES "public"."Post"("id") ON DELETE CASCADE  ON UPDATE CASCADE
```

## Changes

```diff
diff --git schema.prisma schema.prisma
migration 20200426200614-init..20200426202558-init
--- datamodel.dml
+++ datamodel.dml
@@ -3,9 +3,9 @@
 }
 datasource db {
   provider = "postgresql"
-  url = "***"
+  url      = env("DATABASE_URL")
 }
 model Category {
   id    Int    @default(autoincrement()) @id
@@ -15,9 +15,9 @@
 }
 model Post {
   id         Int        @default(autoincrement()) @id
-  published  Boolean    @default(false)
+  public     Boolean    @default(false)
   title      String
   text       String?
   created_at DateTime   @default(now())
   updated_at DateTime   @default(now())
```

