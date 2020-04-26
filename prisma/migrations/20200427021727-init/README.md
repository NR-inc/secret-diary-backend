# Migration `20200427021727-init`

This migration has been generated by Nikita Yunoshev at 4/27/2020, 2:17:27 AM.
You can check out the [state of the schema](./schema.prisma) after the migration.

## Database Steps

```sql

```

## Changes

```diff
diff --git schema.prisma schema.prisma
migration ..20200427021727-init
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
+  Post  Post[] @relation(references: [id])
+}
+
+model Post {
+  id         Int        @default(autoincrement()) @id
+  public     Boolean    @default(false)
+  title      String
+  text       String?
+  created_at DateTime   @default(now())
+  updated_at DateTime   @default(now())
+  user_id    Int
+  User       User       @relation(fields: [user_id], references: [id])
+  Category   Category[] @relation(references: [id])
+}
+
+model User {
+  avatar     String?
+  created_at DateTime @default(now())
+  email      String   @unique
+  password   String   @default("")
+  first_name String
+  id         Int      @default(autoincrement()) @id
+  last_name  String
+  updated_at DateTime @default(now())
+  Post       Post[]
+}
```

