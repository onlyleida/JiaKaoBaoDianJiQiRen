.class public final Lkotlin/reflect/jvm/internal/impl/load/kotlin/a$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/load/kotlin/m$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/impl/load/kotlin/a$a;->b(Lkotlin/reflect/jvm/internal/impl/name/f;Lkotlin/reflect/jvm/internal/impl/name/b;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/m$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field private final synthetic a:Lkotlin/reflect/jvm/internal/impl/load/kotlin/m$a;

.field final synthetic b:Lkotlin/reflect/jvm/internal/impl/load/kotlin/m$a;

.field final synthetic c:Lkotlin/reflect/jvm/internal/impl/load/kotlin/a$a;

.field final synthetic d:Lkotlin/reflect/jvm/internal/impl/name/f;

.field final synthetic e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lkotlin/reflect/jvm/internal/impl/load/kotlin/m$a;Lkotlin/reflect/jvm/internal/impl/load/kotlin/a$a;Lkotlin/reflect/jvm/internal/impl/name/f;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/load/kotlin/m$a;",
            "Lkotlin/reflect/jvm/internal/impl/load/kotlin/a$a;",
            "Lkotlin/reflect/jvm/internal/impl/name/f;",
            "Ljava/util/ArrayList<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/c;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a$a$a;->b:Lkotlin/reflect/jvm/internal/impl/load/kotlin/m$a;

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a$a$a;->c:Lkotlin/reflect/jvm/internal/impl/load/kotlin/a$a;

    iput-object p3, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a$a$a;->d:Lkotlin/reflect/jvm/internal/impl/name/f;

    iput-object p4, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a$a$a;->e:Ljava/util/ArrayList;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a$a$a;->a:Lkotlin/reflect/jvm/internal/impl/load/kotlin/m$a;

    return-void
.end method


# virtual methods
.method public a(Lkotlin/reflect/jvm/internal/impl/name/f;Lkotlin/reflect/jvm/internal/impl/name/b;Lkotlin/reflect/jvm/internal/impl/name/f;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "enumClassId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "enumEntryName"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a$a$a;->a:Lkotlin/reflect/jvm/internal/impl/load/kotlin/m$a;

    invoke-interface {v0, p1, p2, p3}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/m$a;->a(Lkotlin/reflect/jvm/internal/impl/name/f;Lkotlin/reflect/jvm/internal/impl/name/b;Lkotlin/reflect/jvm/internal/impl/name/f;)V

    return-void
.end method

.method public b(Lkotlin/reflect/jvm/internal/impl/name/f;Lkotlin/reflect/jvm/internal/impl/name/b;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/m$a;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "classId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a$a$a;->a:Lkotlin/reflect/jvm/internal/impl/load/kotlin/m$a;

    invoke-interface {v0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/m$a;->b(Lkotlin/reflect/jvm/internal/impl/name/f;Lkotlin/reflect/jvm/internal/impl/name/b;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/m$a;

    move-result-object p1

    return-object p1
.end method

.method public c(Lkotlin/reflect/jvm/internal/impl/name/f;Lkotlin/reflect/jvm/internal/impl/resolve/constants/f;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a$a$a;->a:Lkotlin/reflect/jvm/internal/impl/load/kotlin/m$a;

    invoke-interface {v0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/m$a;->c(Lkotlin/reflect/jvm/internal/impl/name/f;Lkotlin/reflect/jvm/internal/impl/resolve/constants/f;)V

    return-void
.end method

.method public d(Lkotlin/reflect/jvm/internal/impl/name/f;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a$a$a;->a:Lkotlin/reflect/jvm/internal/impl/load/kotlin/m$a;

    invoke-interface {v0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/m$a;->d(Lkotlin/reflect/jvm/internal/impl/name/f;Ljava/lang/Object;)V

    return-void
.end method

.method public e(Lkotlin/reflect/jvm/internal/impl/name/f;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/m$b;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a$a$a;->a:Lkotlin/reflect/jvm/internal/impl/load/kotlin/m$a;

    invoke-interface {v0, p1}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/m$a;->e(Lkotlin/reflect/jvm/internal/impl/name/f;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/m$b;

    move-result-object p1

    return-object p1
.end method

.method public visitEnd()V
    .locals 4

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a$a$a;->b:Lkotlin/reflect/jvm/internal/impl/load/kotlin/m$a;

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/m$a;->visitEnd()V

    .line 2
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a$a$a;->c:Lkotlin/reflect/jvm/internal/impl/load/kotlin/a$a;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a$a;->g(Lkotlin/reflect/jvm/internal/impl/load/kotlin/a$a;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a$a$a;->d:Lkotlin/reflect/jvm/internal/impl/name/f;

    new-instance v2, Lkotlin/reflect/jvm/internal/impl/resolve/constants/a;

    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a$a$a;->e:Ljava/util/ArrayList;

    invoke-static {v3}, Lkotlin/collections/s;->C0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/c;

    invoke-direct {v2, v3}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/a;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
