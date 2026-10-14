.class public abstract Lkotlin/reflect/jvm/internal/impl/util/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/util/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/util/i$c;,
        Lkotlin/reflect/jvm/internal/impl/util/i$d;,
        Lkotlin/reflect/jvm/internal/impl/util/i$a;,
        Lkotlin/reflect/jvm/internal/impl/util/i$b;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/util/i;->a:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lkotlin/jvm/internal/o;)V
    .locals 0

    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/util/i;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/util/i;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b(Lkotlin/reflect/jvm/internal/impl/descriptors/u;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/impl/util/b$a;->a(Lkotlin/reflect/jvm/internal/impl/util/b;Lkotlin/reflect/jvm/internal/impl/descriptors/u;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
