.class public abstract Lkotlin/reflect/jvm/internal/impl/types/r0;
.super Lkotlin/reflect/jvm/internal/impl/types/v0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/types/r0$a;
    }
.end annotation


# static fields
.field public static final b:Lkotlin/reflect/jvm/internal/impl/types/r0$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/types/r0$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/types/r0$a;-><init>(Lkotlin/jvm/internal/o;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/types/r0;->b:Lkotlin/reflect/jvm/internal/impl/types/r0$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/types/v0;-><init>()V

    return-void
.end method

.method public static final i(Lkotlin/reflect/jvm/internal/impl/types/q0;Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/types/v0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/types/q0;",
            "Ljava/util/List<",
            "+",
            "Lkotlin/reflect/jvm/internal/impl/types/s0;",
            ">;)",
            "Lkotlin/reflect/jvm/internal/impl/types/v0;"
        }
    .end annotation

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/types/r0;->b:Lkotlin/reflect/jvm/internal/impl/types/r0$a;

    invoke-virtual {v0, p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/r0$a;->b(Lkotlin/reflect/jvm/internal/impl/types/q0;Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/types/v0;

    move-result-object p0

    return-object p0
.end method

.method public static final j(Ljava/util/Map;)Lkotlin/reflect/jvm/internal/impl/types/r0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lkotlin/reflect/jvm/internal/impl/types/q0;",
            "+",
            "Lkotlin/reflect/jvm/internal/impl/types/s0;",
            ">;)",
            "Lkotlin/reflect/jvm/internal/impl/types/r0;"
        }
    .end annotation

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/types/r0;->b:Lkotlin/reflect/jvm/internal/impl/types/r0$a;

    invoke-virtual {v0, p0}, Lkotlin/reflect/jvm/internal/impl/types/r0$a;->c(Ljava/util/Map;)Lkotlin/reflect/jvm/internal/impl/types/r0;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public e(Lkotlin/reflect/jvm/internal/impl/types/a0;)Lkotlin/reflect/jvm/internal/impl/types/s0;
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/types/a0;->I0()Lkotlin/reflect/jvm/internal/impl/types/q0;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/r0;->k(Lkotlin/reflect/jvm/internal/impl/types/q0;)Lkotlin/reflect/jvm/internal/impl/types/s0;

    move-result-object p1

    return-object p1
.end method

.method public abstract k(Lkotlin/reflect/jvm/internal/impl/types/q0;)Lkotlin/reflect/jvm/internal/impl/types/s0;
.end method
