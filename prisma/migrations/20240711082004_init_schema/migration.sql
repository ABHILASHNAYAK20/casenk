-- CreateEnum
CREATE TYPE "OrderStatus" AS ENUM ('fulfilled', 'shipped', 'awaiting_shipment');

-- CreateEnum
CREATE TYPE "PhoneModel" AS ENUM ('iphonex', 'iphone11', 'iphone12', 'iphone13', 'iphone14', 'iphone15');

-- CreateEnum
CREATE TYPE "CaseMaterial" AS ENUM ('silicone', 'polycarbonate');

-- CreateEnum
CREATE TYPE "CaseFinish" AS ENUM ('smooth', 'textured');

-- CreateEnum
CREATE TYPE "CaseColor" AS ENUM ('black', 'blue', 'rose');

-- CreateTable
CREATE TABLE "Configuration" (
    "id" TEXT NOT NULL,
    "width" INTEGER NOT NULL,
    "height" INTEGER NOT NULL,
    "color" "CaseColor",
    "model" "PhoneModel",
    "material" "CaseMaterial",
    "finish" "CaseFinish",
    "imageUrl" TEXT NOT NULL,
    "croppedImageUrl" TEXT,

    CONSTRAINT "Configuration_pkey" PRIMARY KEY ("id")
);
