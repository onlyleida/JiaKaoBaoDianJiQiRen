.class public final Lkotlin/reflect/jvm/internal/impl/resolve/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/types/checker/c;


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lkotlin/reflect/jvm/internal/impl/types/q0;",
            "Lkotlin/reflect/jvm/internal/impl/types/q0;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lkotlin/reflect/jvm/internal/impl/types/checker/f$a;

.field private final c:Lkotlin/reflect/jvm/internal/impl/types/checker/g;


# direct methods
.method public constructor <init>(Ljava/util/Map;Lkotlin/reflect/jvm/internal/impl/types/checker/f$a;Lkotlin/reflect/jvm/internal/impl/types/checker/g;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lkotlin/reflect/jvm/internal/impl/types/q0;",
            "+",
            "Lkotlin/reflect/jvm/internal/impl/types/q0;",
            ">;",
            "Lkotlin/reflect/jvm/internal/impl/types/checker/f$a;",
            "Lkotlin/reflect/jvm/internal/impl/types/checker/g;",
            ")V"
        }
    .end annotation

    const-string v0, "equalityAxioms"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kotlinTypeRefiner"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/resolve/h;->a:Ljava/util/Map;

    .line 3
    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/resolve/h;->b:Lkotlin/reflect/jvm/internal/impl/types/checker/f$a;

    .line 4
    iput-object p3, p0, Lkotlin/reflect/jvm/internal/impl/resolve/h;->c:Lkotlin/reflect/jvm/internal/impl/types/checker/g;

    return-void
.end method

.method private final y0(Lkotlin/reflect/jvm/internal/impl/types/q0;Lkotlin/reflect/jvm/internal/impl/types/q0;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/resolve/h;->b:Lkotlin/reflect/jvm/internal/impl/types/checker/f$a;

    invoke-interface {v0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/types/checker/f$a;->a(Lkotlin/reflect/jvm/internal/impl/types/q0;Lkotlin/reflect/jvm/internal/impl/types/q0;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/resolve/h;->a:Ljava/util/Map;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 3
    :cond_1
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/types/q0;

    .line 4
    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/resolve/h;->a:Ljava/util/Map;

    invoke-interface {v3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/types/q0;

    if-eqz v0, :cond_2

    .line 5
    invoke-static {v0, p2}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    :cond_2
    if-eqz v3, :cond_3

    invoke-static {v3, p1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :cond_4
    :goto_0
    return v1
.end method


# virtual methods
.method public A(Lkotlin/reflect/jvm/internal/impl/types/model/g;)Lkotlin/reflect/jvm/internal/impl/types/model/j;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/checker/c$a;->i(Lkotlin/reflect/jvm/internal/impl/types/checker/c;Lkotlin/reflect/jvm/internal/impl/types/model/g;)Lkotlin/reflect/jvm/internal/impl/types/model/j;

    move-result-object p1

    return-object p1
.end method

.method public B(Lkotlin/reflect/jvm/internal/impl/types/model/b;)Lkotlin/reflect/jvm/internal/impl/types/model/a;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/checker/c$a;->t0(Lkotlin/reflect/jvm/internal/impl/types/checker/c;Lkotlin/reflect/jvm/internal/impl/types/model/b;)Lkotlin/reflect/jvm/internal/impl/types/model/a;

    move-result-object p1

    return-object p1
.end method

.method public C(Lkotlin/reflect/jvm/internal/impl/types/model/g;I)Lkotlin/reflect/jvm/internal/impl/types/model/j;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/types/checker/c$a;->o(Lkotlin/reflect/jvm/internal/impl/types/checker/c;Lkotlin/reflect/jvm/internal/impl/types/model/g;I)Lkotlin/reflect/jvm/internal/impl/types/model/j;

    move-result-object p1

    return-object p1
.end method

.method public D(Lkotlin/reflect/jvm/internal/impl/types/model/k;)Lkotlin/reflect/jvm/internal/impl/builtins/PrimitiveType;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/checker/c$a;->t(Lkotlin/reflect/jvm/internal/impl/types/checker/c;Lkotlin/reflect/jvm/internal/impl/types/model/k;)Lkotlin/reflect/jvm/internal/impl/builtins/PrimitiveType;

    move-result-object p1

    return-object p1
.end method

.method public E(Lkotlin/reflect/jvm/internal/impl/types/model/k;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/checker/c$a;->G(Lkotlin/reflect/jvm/internal/impl/types/checker/c;Lkotlin/reflect/jvm/internal/impl/types/model/k;)Z

    move-result p1

    return p1
.end method

.method public F(Lkotlin/reflect/jvm/internal/impl/types/model/h;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/checker/c$a;->e0(Lkotlin/reflect/jvm/internal/impl/types/checker/c;Lkotlin/reflect/jvm/internal/impl/types/model/h;)Z

    move-result p1

    return p1
.end method

.method public G(Lkotlin/reflect/jvm/internal/impl/types/model/g;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/checker/c$a;->X(Lkotlin/reflect/jvm/internal/impl/types/checker/c;Lkotlin/reflect/jvm/internal/impl/types/model/g;)Z

    move-result p1

    return p1
.end method

.method public H(Lkotlin/reflect/jvm/internal/impl/types/model/k;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/checker/c$a;->R(Lkotlin/reflect/jvm/internal/impl/types/checker/c;Lkotlin/reflect/jvm/internal/impl/types/model/k;)Z

    move-result p1

    return p1
.end method

.method public I(Lkotlin/reflect/jvm/internal/impl/types/model/h;Lkotlin/reflect/jvm/internal/impl/types/model/h;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/types/checker/c$a;->E(Lkotlin/reflect/jvm/internal/impl/types/checker/c;Lkotlin/reflect/jvm/internal/impl/types/model/h;Lkotlin/reflect/jvm/internal/impl/types/model/h;)Z

    move-result p1

    return p1
.end method

.method public J(Lkotlin/reflect/jvm/internal/impl/types/model/h;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/checker/c$a;->I(Lkotlin/reflect/jvm/internal/impl/types/checker/c;Lkotlin/reflect/jvm/internal/impl/types/model/h;)Z

    move-result p1

    return p1
.end method

.method public K(Lkotlin/reflect/jvm/internal/impl/types/model/h;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/checker/c$a;->f0(Lkotlin/reflect/jvm/internal/impl/types/checker/c;Lkotlin/reflect/jvm/internal/impl/types/model/h;)Z

    move-result p1

    return p1
.end method

.method public L(Lkotlin/reflect/jvm/internal/impl/types/model/h;I)Lkotlin/reflect/jvm/internal/impl/types/model/j;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/types/checker/c$a;->p(Lkotlin/reflect/jvm/internal/impl/types/checker/c;Lkotlin/reflect/jvm/internal/impl/types/model/h;I)Lkotlin/reflect/jvm/internal/impl/types/model/j;

    move-result-object p1

    return-object p1
.end method

.method public M(Lkotlin/reflect/jvm/internal/impl/types/model/h;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/checker/c$a;->Z(Lkotlin/reflect/jvm/internal/impl/types/checker/c;Lkotlin/reflect/jvm/internal/impl/types/model/h;)Z

    move-result p1

    return p1
.end method

.method public N(Lkotlin/reflect/jvm/internal/impl/types/model/k;)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/checker/c$a;->o0(Lkotlin/reflect/jvm/internal/impl/types/checker/c;Lkotlin/reflect/jvm/internal/impl/types/model/k;)I

    move-result p1

    return p1
.end method

.method public O(Lkotlin/reflect/jvm/internal/impl/types/model/k;)Lkotlin/reflect/jvm/internal/impl/builtins/PrimitiveType;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/checker/c$a;->s(Lkotlin/reflect/jvm/internal/impl/types/checker/c;Lkotlin/reflect/jvm/internal/impl/types/model/k;)Lkotlin/reflect/jvm/internal/impl/builtins/PrimitiveType;

    move-result-object p1

    return-object p1
.end method

.method public P(Lkotlin/reflect/jvm/internal/impl/types/model/l;)Lkotlin/reflect/jvm/internal/impl/types/model/g;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/checker/c$a;->u(Lkotlin/reflect/jvm/internal/impl/types/checker/c;Lkotlin/reflect/jvm/internal/impl/types/model/l;)Lkotlin/reflect/jvm/internal/impl/types/model/g;

    move-result-object p1

    return-object p1
.end method

.method public Q(Lkotlin/reflect/jvm/internal/impl/types/model/h;Lkotlin/reflect/jvm/internal/impl/types/model/k;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/types/model/h;",
            "Lkotlin/reflect/jvm/internal/impl/types/model/k;",
            ")",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/types/model/h;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/types/checker/c$a;->m(Lkotlin/reflect/jvm/internal/impl/types/checker/c;Lkotlin/reflect/jvm/internal/impl/types/model/h;Lkotlin/reflect/jvm/internal/impl/types/model/k;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public R(Lkotlin/reflect/jvm/internal/impl/types/model/k;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/checker/c$a;->W(Lkotlin/reflect/jvm/internal/impl/types/checker/c;Lkotlin/reflect/jvm/internal/impl/types/model/k;)Z

    move-result p1

    return p1
.end method

.method public S(Lkotlin/reflect/jvm/internal/impl/types/model/b;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/checker/c$a;->Y(Lkotlin/reflect/jvm/internal/impl/types/checker/c;Lkotlin/reflect/jvm/internal/impl/types/model/b;)Z

    move-result p1

    return p1
.end method

.method public T(Lkotlin/reflect/jvm/internal/impl/types/model/g;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/checker/c$a;->N(Lkotlin/reflect/jvm/internal/impl/types/checker/c;Lkotlin/reflect/jvm/internal/impl/types/model/g;)Z

    move-result p1

    return p1
.end method

.method public U(Lkotlin/reflect/jvm/internal/impl/types/model/k;)Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/types/model/k;",
            ")",
            "Ljava/util/Collection<",
            "Lkotlin/reflect/jvm/internal/impl/types/model/g;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/checker/c$a;->s0(Lkotlin/reflect/jvm/internal/impl/types/checker/c;Lkotlin/reflect/jvm/internal/impl/types/model/k;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public V(Lkotlin/reflect/jvm/internal/impl/types/model/h;)Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/types/model/h;",
            ")",
            "Ljava/util/Collection<",
            "Lkotlin/reflect/jvm/internal/impl/types/model/g;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/checker/c$a;->p0(Lkotlin/reflect/jvm/internal/impl/types/checker/c;Lkotlin/reflect/jvm/internal/impl/types/model/h;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public W(Lkotlin/reflect/jvm/internal/impl/types/model/g;)Lkotlin/reflect/jvm/internal/impl/types/model/k;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/checker/c$a;->u0(Lkotlin/reflect/jvm/internal/impl/types/checker/c;Lkotlin/reflect/jvm/internal/impl/types/model/g;)Lkotlin/reflect/jvm/internal/impl/types/model/k;

    move-result-object p1

    return-object p1
.end method

.method public X(Lkotlin/reflect/jvm/internal/impl/types/model/k;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/checker/c$a;->M(Lkotlin/reflect/jvm/internal/impl/types/checker/c;Lkotlin/reflect/jvm/internal/impl/types/model/k;)Z

    move-result p1

    return p1
.end method

.method public Y(Lkotlin/reflect/jvm/internal/impl/types/model/g;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/checker/c$a;->C(Lkotlin/reflect/jvm/internal/impl/types/checker/c;Lkotlin/reflect/jvm/internal/impl/types/model/g;)Z

    move-result p1

    return p1
.end method

.method public Z(Lkotlin/reflect/jvm/internal/impl/types/model/g;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/checker/c$a;->L(Lkotlin/reflect/jvm/internal/impl/types/checker/c;Lkotlin/reflect/jvm/internal/impl/types/model/g;)Z

    move-result p1

    return p1
.end method

.method public a(Lkotlin/reflect/jvm/internal/impl/types/model/h;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/checker/c$a;->b0(Lkotlin/reflect/jvm/internal/impl/types/checker/c;Lkotlin/reflect/jvm/internal/impl/types/model/h;)Z

    move-result p1

    return p1
.end method

.method public a0(Lkotlin/reflect/jvm/internal/impl/types/model/h;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/checker/c$a;->Q(Lkotlin/reflect/jvm/internal/impl/types/checker/c;Lkotlin/reflect/jvm/internal/impl/types/model/h;)Z

    move-result p1

    return p1
.end method

.method public b(Lkotlin/reflect/jvm/internal/impl/types/model/e;)Lkotlin/reflect/jvm/internal/impl/types/model/h;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/checker/c$a;->h0(Lkotlin/reflect/jvm/internal/impl/types/checker/c;Lkotlin/reflect/jvm/internal/impl/types/model/e;)Lkotlin/reflect/jvm/internal/impl/types/model/h;

    move-result-object p1

    return-object p1
.end method

.method public b0(Lkotlin/reflect/jvm/internal/impl/types/model/k;)Lkotlin/reflect/jvm/internal/impl/name/d;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/checker/c$a;->q(Lkotlin/reflect/jvm/internal/impl/types/checker/c;Lkotlin/reflect/jvm/internal/impl/types/model/k;)Lkotlin/reflect/jvm/internal/impl/name/d;

    move-result-object p1

    return-object p1
.end method

.method public c(Lkotlin/reflect/jvm/internal/impl/types/model/g;)Lkotlin/reflect/jvm/internal/impl/types/model/h;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/checker/c$a;->h(Lkotlin/reflect/jvm/internal/impl/types/checker/c;Lkotlin/reflect/jvm/internal/impl/types/model/g;)Lkotlin/reflect/jvm/internal/impl/types/model/h;

    move-result-object p1

    return-object p1
.end method

.method public c0(Lkotlin/reflect/jvm/internal/impl/types/model/g;)Lkotlin/reflect/jvm/internal/impl/types/model/e;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/checker/c$a;->g(Lkotlin/reflect/jvm/internal/impl/types/checker/c;Lkotlin/reflect/jvm/internal/impl/types/model/g;)Lkotlin/reflect/jvm/internal/impl/types/model/e;

    move-result-object p1

    return-object p1
.end method

.method public d(Lkotlin/reflect/jvm/internal/impl/types/model/h;)Lkotlin/reflect/jvm/internal/impl/types/model/k;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/checker/c$a;->v0(Lkotlin/reflect/jvm/internal/impl/types/checker/c;Lkotlin/reflect/jvm/internal/impl/types/model/h;)Lkotlin/reflect/jvm/internal/impl/types/model/k;

    move-result-object p1

    return-object p1
.end method

.method public d0(Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/types/model/g;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lkotlin/reflect/jvm/internal/impl/types/model/g;",
            ">;)",
            "Lkotlin/reflect/jvm/internal/impl/types/model/g;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/checker/c$a;->F(Lkotlin/reflect/jvm/internal/impl/types/checker/c;Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/types/model/g;

    move-result-object p1

    return-object p1
.end method

.method public e(Lkotlin/reflect/jvm/internal/impl/types/model/h;Z)Lkotlin/reflect/jvm/internal/impl/types/model/h;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/types/checker/c$a;->z0(Lkotlin/reflect/jvm/internal/impl/types/checker/c;Lkotlin/reflect/jvm/internal/impl/types/model/h;Z)Lkotlin/reflect/jvm/internal/impl/types/model/h;

    move-result-object p1

    return-object p1
.end method

.method public e0(Lkotlin/reflect/jvm/internal/impl/types/model/b;)Lkotlin/reflect/jvm/internal/impl/types/model/CaptureStatus;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/checker/c$a;->k(Lkotlin/reflect/jvm/internal/impl/types/checker/c;Lkotlin/reflect/jvm/internal/impl/types/model/b;)Lkotlin/reflect/jvm/internal/impl/types/model/CaptureStatus;

    move-result-object p1

    return-object p1
.end method

.method public f(Lkotlin/reflect/jvm/internal/impl/types/model/e;)Lkotlin/reflect/jvm/internal/impl/types/model/h;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/checker/c$a;->w0(Lkotlin/reflect/jvm/internal/impl/types/checker/c;Lkotlin/reflect/jvm/internal/impl/types/model/e;)Lkotlin/reflect/jvm/internal/impl/types/model/h;

    move-result-object p1

    return-object p1
.end method

.method public f0(Lkotlin/reflect/jvm/internal/impl/types/model/g;)Lkotlin/reflect/jvm/internal/impl/types/model/g;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/checker/c$a;->k0(Lkotlin/reflect/jvm/internal/impl/types/checker/c;Lkotlin/reflect/jvm/internal/impl/types/model/g;)Lkotlin/reflect/jvm/internal/impl/types/model/g;

    move-result-object p1

    return-object p1
.end method

.method public g(Lkotlin/reflect/jvm/internal/impl/types/model/h;)Lkotlin/reflect/jvm/internal/impl/types/model/b;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/checker/c$a;->d(Lkotlin/reflect/jvm/internal/impl/types/checker/c;Lkotlin/reflect/jvm/internal/impl/types/model/h;)Lkotlin/reflect/jvm/internal/impl/types/model/b;

    move-result-object p1

    return-object p1
.end method

.method public g0(Lkotlin/reflect/jvm/internal/impl/types/model/a;)Lkotlin/reflect/jvm/internal/impl/types/model/j;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/checker/c$a;->q0(Lkotlin/reflect/jvm/internal/impl/types/checker/c;Lkotlin/reflect/jvm/internal/impl/types/model/a;)Lkotlin/reflect/jvm/internal/impl/types/model/j;

    move-result-object p1

    return-object p1
.end method

.method public h(Lkotlin/reflect/jvm/internal/impl/types/model/k;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/checker/c$a;->g0(Lkotlin/reflect/jvm/internal/impl/types/checker/c;Lkotlin/reflect/jvm/internal/impl/types/model/k;)Z

    move-result p1

    return p1
.end method

.method public h0(Lkotlin/reflect/jvm/internal/impl/types/model/b;)Lkotlin/reflect/jvm/internal/impl/types/model/g;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/checker/c$a;->j0(Lkotlin/reflect/jvm/internal/impl/types/checker/c;Lkotlin/reflect/jvm/internal/impl/types/model/b;)Lkotlin/reflect/jvm/internal/impl/types/model/g;

    move-result-object p1

    return-object p1
.end method

.method public i(Lkotlin/reflect/jvm/internal/impl/types/model/g;)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/checker/c$a;->b(Lkotlin/reflect/jvm/internal/impl/types/checker/c;Lkotlin/reflect/jvm/internal/impl/types/model/g;)I

    move-result p1

    return p1
.end method

.method public i0(Lkotlin/reflect/jvm/internal/impl/types/model/k;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/checker/c$a;->J(Lkotlin/reflect/jvm/internal/impl/types/checker/c;Lkotlin/reflect/jvm/internal/impl/types/model/k;)Z

    move-result p1

    return p1
.end method

.method public j(Lkotlin/reflect/jvm/internal/impl/types/model/b;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/checker/c$a;->a0(Lkotlin/reflect/jvm/internal/impl/types/checker/c;Lkotlin/reflect/jvm/internal/impl/types/model/b;)Z

    move-result p1

    return p1
.end method

.method public j0(Lkotlin/reflect/jvm/internal/impl/types/model/k;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/checker/c$a;->S(Lkotlin/reflect/jvm/internal/impl/types/checker/c;Lkotlin/reflect/jvm/internal/impl/types/model/k;)Z

    move-result p1

    return p1
.end method

.method public k(Lkotlin/reflect/jvm/internal/impl/types/model/l;Lkotlin/reflect/jvm/internal/impl/types/model/k;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/types/checker/c$a;->D(Lkotlin/reflect/jvm/internal/impl/types/checker/c;Lkotlin/reflect/jvm/internal/impl/types/model/l;Lkotlin/reflect/jvm/internal/impl/types/model/k;)Z

    move-result p1

    return p1
.end method

.method public k0(Lkotlin/reflect/jvm/internal/impl/types/model/g;)Lkotlin/reflect/jvm/internal/impl/types/model/g;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/checker/c$a;->v(Lkotlin/reflect/jvm/internal/impl/types/checker/c;Lkotlin/reflect/jvm/internal/impl/types/model/g;)Lkotlin/reflect/jvm/internal/impl/types/model/g;

    move-result-object p1

    return-object p1
.end method

.method public l(Lkotlin/reflect/jvm/internal/impl/types/model/h;)Lkotlin/reflect/jvm/internal/impl/types/model/i;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/checker/c$a;->c(Lkotlin/reflect/jvm/internal/impl/types/checker/c;Lkotlin/reflect/jvm/internal/impl/types/model/h;)Lkotlin/reflect/jvm/internal/impl/types/model/i;

    move-result-object p1

    return-object p1
.end method

.method public l0(Lkotlin/reflect/jvm/internal/impl/types/model/g;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/checker/c$a;->V(Lkotlin/reflect/jvm/internal/impl/types/checker/c;Lkotlin/reflect/jvm/internal/impl/types/model/g;)Z

    move-result p1

    return p1
.end method

.method public m(Lkotlin/reflect/jvm/internal/impl/types/model/i;I)Lkotlin/reflect/jvm/internal/impl/types/model/j;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/types/checker/c$a;->n(Lkotlin/reflect/jvm/internal/impl/types/checker/c;Lkotlin/reflect/jvm/internal/impl/types/model/i;I)Lkotlin/reflect/jvm/internal/impl/types/model/j;

    move-result-object p1

    return-object p1
.end method

.method public m0(Lkotlin/reflect/jvm/internal/impl/types/model/g;)Lkotlin/reflect/jvm/internal/impl/types/model/h;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/checker/c$a;->i0(Lkotlin/reflect/jvm/internal/impl/types/checker/c;Lkotlin/reflect/jvm/internal/impl/types/model/g;)Lkotlin/reflect/jvm/internal/impl/types/model/h;

    move-result-object p1

    return-object p1
.end method

.method public n(Lkotlin/reflect/jvm/internal/impl/types/model/g;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/checker/c$a;->H(Lkotlin/reflect/jvm/internal/impl/types/checker/c;Lkotlin/reflect/jvm/internal/impl/types/model/g;)Z

    move-result p1

    return p1
.end method

.method public n0(Lkotlin/reflect/jvm/internal/impl/types/model/j;)Lkotlin/reflect/jvm/internal/impl/types/model/TypeVariance;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/checker/c$a;->z(Lkotlin/reflect/jvm/internal/impl/types/checker/c;Lkotlin/reflect/jvm/internal/impl/types/model/j;)Lkotlin/reflect/jvm/internal/impl/types/model/TypeVariance;

    move-result-object p1

    return-object p1
.end method

.method public o(Lkotlin/reflect/jvm/internal/impl/types/model/k;I)Lkotlin/reflect/jvm/internal/impl/types/model/l;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/types/checker/c$a;->r(Lkotlin/reflect/jvm/internal/impl/types/checker/c;Lkotlin/reflect/jvm/internal/impl/types/model/k;I)Lkotlin/reflect/jvm/internal/impl/types/model/l;

    move-result-object p1

    return-object p1
.end method

.method public o0(Lkotlin/reflect/jvm/internal/impl/types/model/g;Lkotlin/reflect/jvm/internal/impl/name/c;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/types/checker/c$a;->B(Lkotlin/reflect/jvm/internal/impl/types/checker/c;Lkotlin/reflect/jvm/internal/impl/types/model/g;Lkotlin/reflect/jvm/internal/impl/name/c;)Z

    move-result p1

    return p1
.end method

.method public p(Lkotlin/reflect/jvm/internal/impl/types/model/h;Lkotlin/reflect/jvm/internal/impl/types/model/h;)Lkotlin/reflect/jvm/internal/impl/types/model/g;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/types/checker/c$a;->l(Lkotlin/reflect/jvm/internal/impl/types/checker/c;Lkotlin/reflect/jvm/internal/impl/types/model/h;Lkotlin/reflect/jvm/internal/impl/types/model/h;)Lkotlin/reflect/jvm/internal/impl/types/model/g;

    move-result-object p1

    return-object p1
.end method

.method public p0(Lkotlin/reflect/jvm/internal/impl/types/model/q;)Lkotlin/reflect/jvm/internal/impl/types/model/l;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/checker/c$a;->x(Lkotlin/reflect/jvm/internal/impl/types/checker/c;Lkotlin/reflect/jvm/internal/impl/types/model/q;)Lkotlin/reflect/jvm/internal/impl/types/model/l;

    move-result-object p1

    return-object p1
.end method

.method public q(Lkotlin/reflect/jvm/internal/impl/types/model/k;)Lkotlin/reflect/jvm/internal/impl/types/model/l;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/checker/c$a;->y(Lkotlin/reflect/jvm/internal/impl/types/checker/c;Lkotlin/reflect/jvm/internal/impl/types/model/k;)Lkotlin/reflect/jvm/internal/impl/types/model/l;

    move-result-object p1

    return-object p1
.end method

.method public q0(Lkotlin/reflect/jvm/internal/impl/types/model/g;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/checker/c$a;->T(Lkotlin/reflect/jvm/internal/impl/types/checker/c;Lkotlin/reflect/jvm/internal/impl/types/model/g;)Z

    move-result p1

    return p1
.end method

.method public r(Lkotlin/reflect/jvm/internal/impl/types/model/g;Z)Lkotlin/reflect/jvm/internal/impl/types/model/g;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/types/checker/c$a;->y0(Lkotlin/reflect/jvm/internal/impl/types/checker/c;Lkotlin/reflect/jvm/internal/impl/types/model/g;Z)Lkotlin/reflect/jvm/internal/impl/types/model/g;

    move-result-object p1

    return-object p1
.end method

.method public r0(Lkotlin/reflect/jvm/internal/impl/types/model/h;Lkotlin/reflect/jvm/internal/impl/types/model/CaptureStatus;)Lkotlin/reflect/jvm/internal/impl/types/model/h;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/types/checker/c$a;->j(Lkotlin/reflect/jvm/internal/impl/types/checker/c;Lkotlin/reflect/jvm/internal/impl/types/model/h;Lkotlin/reflect/jvm/internal/impl/types/model/CaptureStatus;)Lkotlin/reflect/jvm/internal/impl/types/model/h;

    move-result-object p1

    return-object p1
.end method

.method public s(Lkotlin/reflect/jvm/internal/impl/types/model/c;)Lkotlin/reflect/jvm/internal/impl/types/model/h;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/checker/c$a;->n0(Lkotlin/reflect/jvm/internal/impl/types/checker/c;Lkotlin/reflect/jvm/internal/impl/types/model/c;)Lkotlin/reflect/jvm/internal/impl/types/model/h;

    move-result-object p1

    return-object p1
.end method

.method public s0(Lkotlin/reflect/jvm/internal/impl/types/model/h;)Lkotlin/reflect/jvm/internal/impl/types/model/c;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/checker/c$a;->e(Lkotlin/reflect/jvm/internal/impl/types/checker/c;Lkotlin/reflect/jvm/internal/impl/types/model/h;)Lkotlin/reflect/jvm/internal/impl/types/model/c;

    move-result-object p1

    return-object p1
.end method

.method public t(Lkotlin/reflect/jvm/internal/impl/types/model/j;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/checker/c$a;->d0(Lkotlin/reflect/jvm/internal/impl/types/checker/c;Lkotlin/reflect/jvm/internal/impl/types/model/j;)Z

    move-result p1

    return p1
.end method

.method public t0(Lkotlin/reflect/jvm/internal/impl/types/model/k;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/checker/c$a;->K(Lkotlin/reflect/jvm/internal/impl/types/checker/c;Lkotlin/reflect/jvm/internal/impl/types/model/k;)Z

    move-result p1

    return p1
.end method

.method public u(Lkotlin/reflect/jvm/internal/impl/types/model/l;)Lkotlin/reflect/jvm/internal/impl/types/model/TypeVariance;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/checker/c$a;->A(Lkotlin/reflect/jvm/internal/impl/types/checker/c;Lkotlin/reflect/jvm/internal/impl/types/model/l;)Lkotlin/reflect/jvm/internal/impl/types/model/TypeVariance;

    move-result-object p1

    return-object p1
.end method

.method public u0(Lkotlin/reflect/jvm/internal/impl/types/model/j;)Lkotlin/reflect/jvm/internal/impl/types/model/g;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/checker/c$a;->w(Lkotlin/reflect/jvm/internal/impl/types/checker/c;Lkotlin/reflect/jvm/internal/impl/types/model/j;)Lkotlin/reflect/jvm/internal/impl/types/model/g;

    move-result-object p1

    return-object p1
.end method

.method public v(Lkotlin/reflect/jvm/internal/impl/types/model/i;)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/checker/c$a;->r0(Lkotlin/reflect/jvm/internal/impl/types/checker/c;Lkotlin/reflect/jvm/internal/impl/types/model/i;)I

    move-result p1

    return p1
.end method

.method public v0(Lkotlin/reflect/jvm/internal/impl/types/model/e;)Lkotlin/reflect/jvm/internal/impl/types/model/d;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/checker/c$a;->f(Lkotlin/reflect/jvm/internal/impl/types/checker/c;Lkotlin/reflect/jvm/internal/impl/types/model/e;)Lkotlin/reflect/jvm/internal/impl/types/model/d;

    move-result-object p1

    return-object p1
.end method

.method public w(Lkotlin/reflect/jvm/internal/impl/types/model/g;)Lkotlin/reflect/jvm/internal/impl/types/model/h;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/checker/c$a;->x0(Lkotlin/reflect/jvm/internal/impl/types/checker/c;Lkotlin/reflect/jvm/internal/impl/types/model/g;)Lkotlin/reflect/jvm/internal/impl/types/model/h;

    move-result-object p1

    return-object p1
.end method

.method public w0(Lkotlin/reflect/jvm/internal/impl/types/model/k;Lkotlin/reflect/jvm/internal/impl/types/model/k;)Z
    .locals 2

    const-string v0, "c1"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "c2"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v0, p1, Lkotlin/reflect/jvm/internal/impl/types/q0;

    const-string v1, "Failed requirement."

    if-eqz v0, :cond_3

    .line 2
    instance-of v0, p2, Lkotlin/reflect/jvm/internal/impl/types/q0;

    if-eqz v0, :cond_2

    .line 3
    invoke-static {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/types/checker/c$a;->a(Lkotlin/reflect/jvm/internal/impl/types/checker/c;Lkotlin/reflect/jvm/internal/impl/types/model/k;Lkotlin/reflect/jvm/internal/impl/types/model/k;)Z

    move-result v0

    if-nez v0, :cond_1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/types/q0;

    check-cast p2, Lkotlin/reflect/jvm/internal/impl/types/q0;

    invoke-direct {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/resolve/h;->y0(Lkotlin/reflect/jvm/internal/impl/types/q0;Lkotlin/reflect/jvm/internal/impl/types/q0;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1

    .line 4
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public x(Lkotlin/reflect/jvm/internal/impl/types/model/h;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/checker/c$a;->U(Lkotlin/reflect/jvm/internal/impl/types/checker/c;Lkotlin/reflect/jvm/internal/impl/types/model/h;)Z

    move-result p1

    return p1
.end method

.method public x0(Lkotlin/reflect/jvm/internal/impl/types/model/g;)Lkotlin/reflect/jvm/internal/impl/types/model/g;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/checker/c$a;->l0(Lkotlin/reflect/jvm/internal/impl/types/checker/c;Lkotlin/reflect/jvm/internal/impl/types/model/g;)Lkotlin/reflect/jvm/internal/impl/types/model/g;

    move-result-object p1

    return-object p1
.end method

.method public y(Lkotlin/reflect/jvm/internal/impl/types/model/g;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/checker/c$a;->O(Lkotlin/reflect/jvm/internal/impl/types/checker/c;Lkotlin/reflect/jvm/internal/impl/types/model/g;)Z

    move-result p1

    return p1
.end method

.method public z(Lkotlin/reflect/jvm/internal/impl/types/model/k;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/checker/c$a;->P(Lkotlin/reflect/jvm/internal/impl/types/checker/c;Lkotlin/reflect/jvm/internal/impl/types/model/k;)Z

    move-result p1

    return p1
.end method

.method public z0(ZZ)Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeCheckerContext;
    .locals 10

    .line 1
    new-instance v9, Lkotlin/reflect/jvm/internal/impl/types/checker/a;

    .line 2
    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/resolve/h;->c:Lkotlin/reflect/jvm/internal/impl/types/checker/g;

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/16 v7, 0x10

    const/4 v8, 0x0

    move-object v0, v9

    move v1, p1

    move v2, p2

    move-object v6, p0

    .line 3
    invoke-direct/range {v0 .. v8}, Lkotlin/reflect/jvm/internal/impl/types/checker/a;-><init>(ZZZLkotlin/reflect/jvm/internal/impl/types/checker/g;Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypePreparator;Lkotlin/reflect/jvm/internal/impl/types/checker/c;ILkotlin/jvm/internal/o;)V

    return-object v9
.end method
