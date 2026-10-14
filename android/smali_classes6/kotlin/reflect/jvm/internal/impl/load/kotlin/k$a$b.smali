.class public final Lkotlin/reflect/jvm/internal/impl/load/kotlin/k$a$b;
.super Lkotlin/reflect/jvm/internal/impl/load/kotlin/k$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/load/kotlin/k$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final a:Lkotlin/reflect/jvm/internal/impl/load/kotlin/m;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/load/kotlin/m;[B)V
    .locals 0

    const-string p2, "kotlinJvmBinaryClass"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 1
    invoke-direct {p0, p2}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/k$a;-><init>(Lkotlin/jvm/internal/o;)V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/k$a$b;->a:Lkotlin/reflect/jvm/internal/impl/load/kotlin/m;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/reflect/jvm/internal/impl/load/kotlin/m;[BILkotlin/jvm/internal/o;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 2
    :cond_0
    invoke-direct {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/k$a$b;-><init>(Lkotlin/reflect/jvm/internal/impl/load/kotlin/m;[B)V

    return-void
.end method


# virtual methods
.method public final b()Lkotlin/reflect/jvm/internal/impl/load/kotlin/m;
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/k$a$b;->a:Lkotlin/reflect/jvm/internal/impl/load/kotlin/m;

    return-object v0
.end method
