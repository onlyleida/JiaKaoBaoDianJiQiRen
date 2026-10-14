.class public Lkotlin/reflect/jvm/internal/impl/descriptors/impl/z$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/descriptors/impl/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Lkotlin/reflect/jvm/internal/impl/descriptors/k;

.field private b:Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;

.field private c:Lkotlin/reflect/jvm/internal/impl/descriptors/s;

.field private d:Lkotlin/reflect/jvm/internal/impl/descriptors/j0;

.field private e:Z

.field private f:Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;

.field private g:Lkotlin/reflect/jvm/internal/impl/types/v0;

.field private h:Z

.field private i:Lkotlin/reflect/jvm/internal/impl/descriptors/m0;

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/t0;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lkotlin/reflect/jvm/internal/impl/name/f;

.field private l:Lkotlin/reflect/jvm/internal/impl/types/a0;

.field final synthetic m:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/z;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/z;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/z$a;->m:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/j;->b()Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/z$a;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    .line 3
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/z;->q()Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/z$a;->b:Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;

    .line 4
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/z;->getVisibility()Lkotlin/reflect/jvm/internal/impl/descriptors/s;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/z$a;->c:Lkotlin/reflect/jvm/internal/impl/descriptors/s;

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/z$a;->d:Lkotlin/reflect/jvm/internal/impl/descriptors/j0;

    const/4 v1, 0x0

    .line 6
    iput-boolean v1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/z$a;->e:Z

    .line 7
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/z;->g()Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;

    move-result-object v1

    iput-object v1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/z$a;->f:Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;

    .line 8
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/types/v0;->a:Lkotlin/reflect/jvm/internal/impl/types/v0;

    iput-object v1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/z$a;->g:Lkotlin/reflect/jvm/internal/impl/types/v0;

    const/4 v1, 0x1

    .line 9
    iput-boolean v1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/z$a;->h:Z

    .line 10
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/z;->H0(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/z;)Lkotlin/reflect/jvm/internal/impl/descriptors/m0;

    move-result-object v1

    iput-object v1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/z$a;->i:Lkotlin/reflect/jvm/internal/impl/descriptors/m0;

    .line 11
    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/z$a;->j:Ljava/util/List;

    .line 12
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/i;->getName()Lkotlin/reflect/jvm/internal/impl/name/f;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/z$a;->k:Lkotlin/reflect/jvm/internal/impl/name/f;

    .line 13
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/h0;->getType()Lkotlin/reflect/jvm/internal/impl/types/a0;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/z$a;->l:Lkotlin/reflect/jvm/internal/impl/types/a0;

    return-void
.end method

.method private static synthetic a(I)V
    .locals 24

    move/from16 v0, p0

    const/16 v1, 0x11

    const/16 v2, 0x10

    const/16 v3, 0xe

    const/16 v4, 0xd

    const/16 v5, 0x13

    const/16 v6, 0xb

    const/16 v7, 0x9

    const/4 v8, 0x7

    const/4 v9, 0x5

    const/4 v10, 0x3

    const/4 v11, 0x2

    const/4 v12, 0x1

    if-eq v0, v12, :cond_0

    if-eq v0, v11, :cond_0

    if-eq v0, v10, :cond_0

    if-eq v0, v9, :cond_0

    if-eq v0, v8, :cond_0

    if-eq v0, v7, :cond_0

    if-eq v0, v6, :cond_0

    if-eq v0, v5, :cond_0

    if-eq v0, v4, :cond_0

    if-eq v0, v3, :cond_0

    if-eq v0, v2, :cond_0

    if-eq v0, v1, :cond_0

    const-string v13, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_0

    :cond_0
    const-string v13, "@NotNull method %s.%s must not return null"

    :goto_0
    if-eq v0, v12, :cond_1

    if-eq v0, v11, :cond_1

    if-eq v0, v10, :cond_1

    if-eq v0, v9, :cond_1

    if-eq v0, v8, :cond_1

    if-eq v0, v7, :cond_1

    if-eq v0, v6, :cond_1

    if-eq v0, v5, :cond_1

    if-eq v0, v4, :cond_1

    if-eq v0, v3, :cond_1

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_1

    const/4 v14, 0x3

    goto :goto_1

    :cond_1
    const/4 v14, 0x2

    :goto_1
    new-array v14, v14, [Ljava/lang/Object;

    const-string v15, "kotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$CopyConfiguration"

    const/16 v16, 0x0

    packed-switch v0, :pswitch_data_0

    const-string v17, "owner"

    aput-object v17, v14, v16

    goto :goto_2

    :pswitch_0
    const-string v17, "name"

    aput-object v17, v14, v16

    goto :goto_2

    :pswitch_1
    const-string v17, "substitution"

    aput-object v17, v14, v16

    goto :goto_2

    :pswitch_2
    const-string v17, "typeParameters"

    aput-object v17, v14, v16

    goto :goto_2

    :pswitch_3
    const-string v17, "kind"

    aput-object v17, v14, v16

    goto :goto_2

    :pswitch_4
    const-string v17, "visibility"

    aput-object v17, v14, v16

    goto :goto_2

    :pswitch_5
    const-string v17, "modality"

    aput-object v17, v14, v16

    goto :goto_2

    :pswitch_6
    const-string v17, "type"

    aput-object v17, v14, v16

    goto :goto_2

    :pswitch_7
    aput-object v15, v14, v16

    :goto_2
    const-string v16, "setName"

    const-string v17, "setSubstitution"

    const-string v18, "setTypeParameters"

    const-string v19, "setKind"

    const-string v20, "setVisibility"

    const-string v21, "setModality"

    const-string v22, "setReturnType"

    const-string v23, "setOwner"

    if-eq v0, v12, :cond_d

    if-eq v0, v11, :cond_c

    if-eq v0, v10, :cond_b

    if-eq v0, v9, :cond_a

    if-eq v0, v8, :cond_9

    if-eq v0, v7, :cond_8

    if-eq v0, v6, :cond_7

    if-eq v0, v5, :cond_6

    if-eq v0, v4, :cond_5

    if-eq v0, v3, :cond_4

    if-eq v0, v2, :cond_3

    if-eq v0, v1, :cond_2

    aput-object v15, v14, v12

    goto :goto_3

    :cond_2
    const-string v15, "setCopyOverrides"

    aput-object v15, v14, v12

    goto :goto_3

    :cond_3
    aput-object v17, v14, v12

    goto :goto_3

    :cond_4
    const-string v15, "setDispatchReceiverParameter"

    aput-object v15, v14, v12

    goto :goto_3

    :cond_5
    aput-object v18, v14, v12

    goto :goto_3

    :cond_6
    aput-object v16, v14, v12

    goto :goto_3

    :cond_7
    aput-object v19, v14, v12

    goto :goto_3

    :cond_8
    aput-object v20, v14, v12

    goto :goto_3

    :cond_9
    aput-object v21, v14, v12

    goto :goto_3

    :cond_a
    aput-object v22, v14, v12

    goto :goto_3

    :cond_b
    const-string v15, "setPreserveSourceElement"

    aput-object v15, v14, v12

    goto :goto_3

    :cond_c
    const-string v15, "setOriginal"

    aput-object v15, v14, v12

    goto :goto_3

    :cond_d
    aput-object v23, v14, v12

    :goto_3
    packed-switch v0, :pswitch_data_1

    aput-object v23, v14, v11

    goto :goto_4

    :pswitch_8
    aput-object v16, v14, v11

    goto :goto_4

    :pswitch_9
    aput-object v17, v14, v11

    goto :goto_4

    :pswitch_a
    aput-object v18, v14, v11

    goto :goto_4

    :pswitch_b
    aput-object v19, v14, v11

    goto :goto_4

    :pswitch_c
    aput-object v20, v14, v11

    goto :goto_4

    :pswitch_d
    aput-object v21, v14, v11

    goto :goto_4

    :pswitch_e
    aput-object v22, v14, v11

    :goto_4
    :pswitch_f
    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    if-eq v0, v12, :cond_e

    if-eq v0, v11, :cond_e

    if-eq v0, v10, :cond_e

    if-eq v0, v9, :cond_e

    if-eq v0, v8, :cond_e

    if-eq v0, v7, :cond_e

    if-eq v0, v6, :cond_e

    if-eq v0, v5, :cond_e

    if-eq v0, v4, :cond_e

    if-eq v0, v3, :cond_e

    if-eq v0, v2, :cond_e

    if-eq v0, v1, :cond_e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_5
    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_7
        :pswitch_5
        :pswitch_7
        :pswitch_4
        :pswitch_7
        :pswitch_3
        :pswitch_7
        :pswitch_2
        :pswitch_7
        :pswitch_7
        :pswitch_1
        :pswitch_7
        :pswitch_7
        :pswitch_0
        :pswitch_7
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_e
        :pswitch_f
        :pswitch_d
        :pswitch_f
        :pswitch_c
        :pswitch_f
        :pswitch_b
        :pswitch_f
        :pswitch_a
        :pswitch_f
        :pswitch_f
        :pswitch_9
        :pswitch_f
        :pswitch_f
        :pswitch_8
        :pswitch_f
    .end packed-switch
.end method

.method static synthetic b(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/z$a;)Lkotlin/reflect/jvm/internal/impl/descriptors/k;
    .locals 0

    .line 1
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/z$a;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    return-object p0
.end method

.method static synthetic c(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/z$a;)Lkotlin/reflect/jvm/internal/impl/types/a0;
    .locals 0

    .line 1
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/z$a;->l:Lkotlin/reflect/jvm/internal/impl/types/a0;

    return-object p0
.end method

.method static synthetic d(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/z$a;)Lkotlin/reflect/jvm/internal/impl/descriptors/m0;
    .locals 0

    .line 1
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/z$a;->i:Lkotlin/reflect/jvm/internal/impl/descriptors/m0;

    return-object p0
.end method

.method static synthetic e(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/z$a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/z$a;->h:Z

    return p0
.end method

.method static synthetic f(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/z$a;)Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;
    .locals 0

    .line 1
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/z$a;->b:Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;

    return-object p0
.end method

.method static synthetic g(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/z$a;)Lkotlin/reflect/jvm/internal/impl/descriptors/s;
    .locals 0

    .line 1
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/z$a;->c:Lkotlin/reflect/jvm/internal/impl/descriptors/s;

    return-object p0
.end method

.method static synthetic h(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/z$a;)Lkotlin/reflect/jvm/internal/impl/descriptors/j0;
    .locals 0

    .line 1
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/z$a;->d:Lkotlin/reflect/jvm/internal/impl/descriptors/j0;

    return-object p0
.end method

.method static synthetic i(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/z$a;)Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;
    .locals 0

    .line 1
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/z$a;->f:Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;

    return-object p0
.end method

.method static synthetic j(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/z$a;)Lkotlin/reflect/jvm/internal/impl/name/f;
    .locals 0

    .line 1
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/z$a;->k:Lkotlin/reflect/jvm/internal/impl/name/f;

    return-object p0
.end method

.method static synthetic k(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/z$a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/z$a;->e:Z

    return p0
.end method

.method static synthetic l(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/z$a;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/z$a;->j:Ljava/util/List;

    return-object p0
.end method

.method static synthetic m(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/z$a;)Lkotlin/reflect/jvm/internal/impl/types/v0;
    .locals 0

    .line 1
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/z$a;->g:Lkotlin/reflect/jvm/internal/impl/types/v0;

    return-object p0
.end method


# virtual methods
.method public n()Lkotlin/reflect/jvm/internal/impl/descriptors/j0;
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/z$a;->m:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/z;

    invoke-virtual {v0, p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/z;->L0(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/z$a;)Lkotlin/reflect/jvm/internal/impl/descriptors/j0;

    move-result-object v0

    return-object v0
.end method

.method o()Lkotlin/reflect/jvm/internal/impl/descriptors/k0;
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/z$a;->d:Lkotlin/reflect/jvm/internal/impl/descriptors/j0;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/j0;->getGetter()Lkotlin/reflect/jvm/internal/impl/descriptors/k0;

    move-result-object v0

    return-object v0
.end method

.method p()Lkotlin/reflect/jvm/internal/impl/descriptors/l0;
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/z$a;->d:Lkotlin/reflect/jvm/internal/impl/descriptors/j0;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/j0;->getSetter()Lkotlin/reflect/jvm/internal/impl/descriptors/l0;

    move-result-object v0

    return-object v0
.end method

.method public q(Z)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/z$a;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/z$a;->h:Z

    return-object p0
.end method

.method public r(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/z$a;
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/z$a;->f:Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;

    return-object p0

    :cond_0
    const/16 p1, 0xa

    .line 2
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/z$a;->a(I)V

    const/4 p1, 0x0

    throw p1
.end method

.method public s(Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/z$a;
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/z$a;->b:Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;

    return-object p0

    :cond_0
    const/4 p1, 0x6

    .line 2
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/z$a;->a(I)V

    const/4 p1, 0x0

    throw p1
.end method

.method public t(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/z$a;
    .locals 0

    .line 1
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/j0;

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/z$a;->d:Lkotlin/reflect/jvm/internal/impl/descriptors/j0;

    return-object p0
.end method

.method public u(Lkotlin/reflect/jvm/internal/impl/descriptors/k;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/z$a;
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/z$a;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 2
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/z$a;->a(I)V

    const/4 p1, 0x0

    throw p1
.end method

.method public v(Lkotlin/reflect/jvm/internal/impl/types/v0;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/z$a;
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/z$a;->g:Lkotlin/reflect/jvm/internal/impl/types/v0;

    return-object p0

    :cond_0
    const/16 p1, 0xf

    .line 2
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/z$a;->a(I)V

    const/4 p1, 0x0

    throw p1
.end method

.method public w(Lkotlin/reflect/jvm/internal/impl/descriptors/s;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/z$a;
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/z$a;->c:Lkotlin/reflect/jvm/internal/impl/descriptors/s;

    return-object p0

    :cond_0
    const/16 p1, 0x8

    .line 2
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/z$a;->a(I)V

    const/4 p1, 0x0

    throw p1
.end method
