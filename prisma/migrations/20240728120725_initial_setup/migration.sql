-- CreateEnum
CREATE TYPE "Roles" AS ENUM ('SUPER_ADMIN', 'ADMIN', 'USER');

-- CreateEnum
CREATE TYPE "ArticleType" AS ENUM ('BLOG_ITEM');

-- CreateTable
CREATE TABLE "article" (
    "id" SERIAL NOT NULL,
    "title" TEXT NOT NULL,
    "type" "ArticleType" NOT NULL,
    "banner_image" TEXT NOT NULL,
    "intro_text" TEXT NOT NULL,
    "user_id" INTEGER NOT NULL,
    "article_text" TEXT NOT NULL,
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP(3) NOT NULL,
    "published_at" TIMESTAMP(3) NOT NULL,
    "is_published" BOOLEAN NOT NULL,

    CONSTRAINT "article_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "user" (
    "id" SERIAL NOT NULL,
    "role" "Roles" NOT NULL,
    "avatar_image" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "user_name" TEXT NOT NULL,
    "email" TEXT NOT NULL,
    "password" TEXT NOT NULL,

    CONSTRAINT "user_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "article_reactions" (
    "id" SERIAL NOT NULL,
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "article_id" INTEGER NOT NULL,
    "user_id" INTEGER NOT NULL,
    "parent_id" INTEGER NOT NULL,
    "content" TEXT NOT NULL,

    CONSTRAINT "article_reactions_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "article" ADD CONSTRAINT "article_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "user"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "article_reactions" ADD CONSTRAINT "article_reactions_article_id_fkey" FOREIGN KEY ("article_id") REFERENCES "article"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
