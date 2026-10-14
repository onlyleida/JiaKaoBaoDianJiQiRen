.class public final Lkotlin/reflect/jvm/internal/impl/types/r0$a$a;
.super Lkotlin/reflect/jvm/internal/impl/types/r0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/impl/types/r0$a;->d(Ljava/util/Map;Z)Lkotlin/reflect/jvm/internal/impl/types/r0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lkotlin/reflect/jvm/internal/impl/types/q0;",
            "Lkotlin/reflect/jvm/internal/impl/types/s0;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic d:Z


# direct methods
.method constructor <init>(Ljava/util/Map;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lkotlin/reflect/jvm/internal/impl/types/q0;",
            "+",
            "Lkotlin/reflect/jvm/internal/impl/types/s0;",
            ">;Z)V"
        }
    .end annotation

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/types/r0$a$a;->c:Ljava/util/Map;

    iput-boolean p2, p0, Lkotlin/reflect/jvm/internal/impl/types/r0$a$a;->d:Z

    .line 1
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/types/r0;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lkotlin/reflect/jvm/internal/impl/types/r0$a$a;->d:Z

    return v0
.end method

.method public f()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/types/r0$a$a;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public k(Lkotlin/reflect/jvm/internal/impl/types/q0;)Lkotlin/reflect/jvm/internal/impl/types/s0;
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/types/r0$a$a;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/types/s0;

    return-object p1
.end method
