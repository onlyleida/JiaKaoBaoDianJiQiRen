.class public Lorg/libpag/k$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/libpag/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "a"
.end annotation


# instance fields
.field a:Lorg/libpag/PAGImageView;

.field b:Ljava/lang/String;

.field c:I

.field d:Landroid/graphics/Bitmap;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Lorg/libpag/PAGImageView;Ljava/lang/String;ILandroid/graphics/Bitmap;)Lorg/libpag/k$a;
    .locals 1

    .line 1
    new-instance v0, Lorg/libpag/k$a;

    invoke-direct {v0}, Lorg/libpag/k$a;-><init>()V

    .line 2
    iput-object p0, v0, Lorg/libpag/k$a;->a:Lorg/libpag/PAGImageView;

    .line 3
    iput-object p1, v0, Lorg/libpag/k$a;->b:Ljava/lang/String;

    .line 4
    iput p2, v0, Lorg/libpag/k$a;->c:I

    .line 5
    iput-object p3, v0, Lorg/libpag/k$a;->d:Landroid/graphics/Bitmap;

    return-object v0
.end method
