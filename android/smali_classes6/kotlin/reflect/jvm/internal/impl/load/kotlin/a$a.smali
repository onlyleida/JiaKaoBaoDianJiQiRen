.class public final Lkotlin/reflect/jvm/internal/impl/load/kotlin/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/load/kotlin/m$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/impl/load/kotlin/a;->w(Lkotlin/reflect/jvm/internal/impl/name/b;Lkotlin/reflect/jvm/internal/impl/descriptors/o0;Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/m$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field private final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lkotlin/reflect/jvm/internal/impl/name/f;",
            "Lkotlin/reflect/jvm/internal/impl/resolve/constants/g<",
            "*>;>;"
        }
    .end annotation
.end field

.field final synthetic b:Lkotlin/reflect/jvm/internal/impl/load/kotlin/a;

.field final synthetic c:Lkotlin/reflect/jvm/internal/impl/descriptors/d;

.field final synthetic d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/c;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic e:Lkotlin/reflect/jvm/internal/impl/descriptors/o0;


# direct methods
.method constructor <init>(Lkotlin/reflect/jvm/internal/impl/load/kotlin/a;Lkotlin/reflect/jvm/internal/impl/descriptors/d;Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/descriptors/o0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/load/kotlin/a;",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/d;",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/c;",
            ">;",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/o0;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a$a;->b:Lkotlin/reflect/jvm/internal/impl/load/kotlin/a;

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a$a;->c:Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    iput-object p3, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a$a;->d:Ljava/util/List;

    iput-object p4, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a$a;->e:Lkotlin/reflect/jvm/internal/impl/descriptors/o0;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a$a;->a:Ljava/util/HashMap;

    return-void
.end method

.method public static final synthetic f(Lkotlin/reflect/jvm/internal/impl/load/kotlin/a$a;Lkotlin/reflect/jvm/internal/impl/name/f;Ljava/lang/Object;)Lkotlin/reflect/jvm/internal/impl/resolve/constants/g;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a$a;->h(Lkotlin/reflect/jvm/internal/impl/name/f;Ljava/lang/Object;)Lkotlin/reflect/jvm/internal/impl/resolve/constants/g;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic g(Lkotlin/reflect/jvm/internal/impl/load/kotlin/a$a;)Ljava/util/HashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a$a;->a:Ljava/util/HashMap;

    return-object p0
.end method

.method private final h(Lkotlin/reflect/jvm/internal/impl/name/f;Ljava/lang/Object;)Lkotlin/reflect/jvm/internal/impl/resolve/constants/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/name/f;",
            "Ljava/lang/Object;",
            ")",
            "Lkotlin/reflect/jvm/internal/impl/resolve/constants/g<",
            "*>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/resolve/constants/ConstantValueFactory;->a:Lkotlin/reflect/jvm/internal/impl/resolve/constants/ConstantValueFactory;

    invoke-virtual {v0, p2}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/ConstantValueFactory;->c(Ljava/lang/Object;)Lkotlin/reflect/jvm/internal/impl/resolve/constants/g;

    move-result-object p2

    if-nez p2, :cond_0

    .line 2
    sget-object p2, Lkotlin/reflect/jvm/internal/impl/resolve/constants/j;->b:Lkotlin/reflect/jvm/internal/impl/resolve/constants/j$a;

    const-string v0, "Unsupported annotation argument: "

    invoke-static {v0, p1}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/j$a;->a(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/resolve/constants/j;

    move-result-object p2

    :cond_0
    return-object p2
.end method


# virtual methods
.method public a(Lkotlin/reflect/jvm/internal/impl/name/f;Lkotlin/reflect/jvm/internal/impl/name/b;Lkotlin/reflect/jvm/internal/impl/name/f;)V
    .locals 2

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "enumClassId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "enumEntryName"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a$a;->a:Ljava/util/HashMap;

    new-instance v1, Lkotlin/reflect/jvm/internal/impl/resolve/constants/i;

    invoke-direct {v1, p2, p3}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/i;-><init>(Lkotlin/reflect/jvm/internal/impl/name/b;Lkotlin/reflect/jvm/internal/impl/name/f;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public b(Lkotlin/reflect/jvm/internal/impl/name/f;Lkotlin/reflect/jvm/internal/impl/name/b;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/m$a;
    .locals 4

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "classId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a$a;->b:Lkotlin/reflect/jvm/internal/impl/load/kotlin/a;

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/descriptors/o0;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/o0;

    const-string v3, "NO_SOURCE"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, p2, v2, v0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a;->w(Lkotlin/reflect/jvm/internal/impl/name/b;Lkotlin/reflect/jvm/internal/impl/descriptors/o0;Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/m$a;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 3
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a$a$a;

    invoke-direct {v1, p2, p0, p1, v0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a$a$a;-><init>(Lkotlin/reflect/jvm/internal/impl/load/kotlin/m$a;Lkotlin/reflect/jvm/internal/impl/load/kotlin/a$a;Lkotlin/reflect/jvm/internal/impl/name/f;Ljava/util/ArrayList;)V

    return-object v1
.end method

.method public c(Lkotlin/reflect/jvm/internal/impl/name/f;Lkotlin/reflect/jvm/internal/impl/resolve/constants/f;)V
    .locals 2

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a$a;->a:Ljava/util/HashMap;

    new-instance v1, Lkotlin/reflect/jvm/internal/impl/resolve/constants/o;

    invoke-direct {v1, p2}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/o;-><init>(Lkotlin/reflect/jvm/internal/impl/resolve/constants/f;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public d(Lkotlin/reflect/jvm/internal/impl/name/f;Ljava/lang/Object;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a$a;->a:Ljava/util/HashMap;

    invoke-direct {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a$a;->h(Lkotlin/reflect/jvm/internal/impl/name/f;Ljava/lang/Object;)Lkotlin/reflect/jvm/internal/impl/resolve/constants/g;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public e(Lkotlin/reflect/jvm/internal/impl/name/f;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/m$b;
    .locals 3

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a$a$b;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a$a;->b:Lkotlin/reflect/jvm/internal/impl/load/kotlin/a;

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a$a;->c:Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    invoke-direct {v0, p0, p1, v1, v2}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a$a$b;-><init>(Lkotlin/reflect/jvm/internal/impl/load/kotlin/a$a;Lkotlin/reflect/jvm/internal/impl/name/f;Lkotlin/reflect/jvm/internal/impl/load/kotlin/a;Lkotlin/reflect/jvm/internal/impl/descriptors/d;)V

    return-object v0
.end method

.method public visitEnd()V
    .locals 5

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a$a;->d:Ljava/util/List;

    new-instance v1, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/d;

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a$a;->c:Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    invoke-interface {v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/d;->n()Lkotlin/reflect/jvm/internal/impl/types/f0;

    move-result-object v2

    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a$a;->a:Ljava/util/HashMap;

    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a$a;->e:Lkotlin/reflect/jvm/internal/impl/descriptors/o0;

    invoke-direct {v1, v2, v3, v4}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/d;-><init>(Lkotlin/reflect/jvm/internal/impl/types/a0;Ljava/util/Map;Lkotlin/reflect/jvm/internal/impl/descriptors/o0;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
