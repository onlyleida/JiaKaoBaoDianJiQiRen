.class public final Lkotlin/reflect/jvm/internal/impl/descriptors/c1/a/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/load/java/w/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/descriptors/c1/a/m$a;
    }
.end annotation


# static fields
.field public static final a:Lkotlin/reflect/jvm/internal/impl/descriptors/c1/a/m;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/descriptors/c1/a/m;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/c1/a/m;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/c1/a/m;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/c1/a/m;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lkotlin/reflect/jvm/internal/impl/load/java/structure/l;)Lkotlin/reflect/jvm/internal/impl/load/java/w/a;
    .locals 1

    const-string v0, "javaElement"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/descriptors/c1/a/m$a;

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/l;

    invoke-direct {v0, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/c1/a/m$a;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/l;)V

    return-object v0
.end method
