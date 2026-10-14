.class public abstract Lkotlin/reflect/jvm/internal/impl/load/kotlin/k$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/load/kotlin/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/load/kotlin/k$a$b;,
        Lkotlin/reflect/jvm/internal/impl/load/kotlin/k$a$a;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/o;)V
    .locals 0

    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/k$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lkotlin/reflect/jvm/internal/impl/load/kotlin/m;
    .locals 2

    .line 1
    instance-of v0, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/k$a$b;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/k$a$b;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/k$a$b;->b()Lkotlin/reflect/jvm/internal/impl/load/kotlin/m;

    move-result-object v1

    :goto_1
    return-object v1
.end method
