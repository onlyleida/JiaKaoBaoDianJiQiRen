.class public final Lkotlin/reflect/jvm/internal/impl/util/OperatorChecks;
.super Lkotlin/reflect/jvm/internal/impl/util/a;
.source "SourceFile"


# static fields
.field public static final a:Lkotlin/reflect/jvm/internal/impl/util/OperatorChecks;

.field private static final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/util/Checks;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 24

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/util/OperatorChecks;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/util/OperatorChecks;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/util/OperatorChecks;->a:Lkotlin/reflect/jvm/internal/impl/util/OperatorChecks;

    const/16 v0, 0x12

    new-array v0, v0, [Lkotlin/reflect/jvm/internal/impl/util/Checks;

    .line 1
    new-instance v7, Lkotlin/reflect/jvm/internal/impl/util/Checks;

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/util/h;->i:Lkotlin/reflect/jvm/internal/impl/name/f;

    const/4 v8, 0x2

    new-array v3, v8, [Lkotlin/reflect/jvm/internal/impl/util/b;

    sget-object v9, Lkotlin/reflect/jvm/internal/impl/util/e$b;->b:Lkotlin/reflect/jvm/internal/impl/util/e$b;

    const/4 v10, 0x0

    aput-object v9, v3, v10

    new-instance v1, Lkotlin/reflect/jvm/internal/impl/util/i$a;

    const/4 v11, 0x1

    invoke-direct {v1, v11}, Lkotlin/reflect/jvm/internal/impl/util/i$a;-><init>(I)V

    aput-object v1, v3, v11

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lkotlin/reflect/jvm/internal/impl/util/Checks;-><init>(Lkotlin/reflect/jvm/internal/impl/name/f;[Lkotlin/reflect/jvm/internal/impl/util/b;Lkotlin/jvm/b/l;ILkotlin/jvm/internal/o;)V

    aput-object v7, v0, v10

    .line 2
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/util/Checks;

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/util/h;->j:Lkotlin/reflect/jvm/internal/impl/name/f;

    new-array v3, v8, [Lkotlin/reflect/jvm/internal/impl/util/b;

    aput-object v9, v3, v10

    new-instance v4, Lkotlin/reflect/jvm/internal/impl/util/i$a;

    invoke-direct {v4, v8}, Lkotlin/reflect/jvm/internal/impl/util/i$a;-><init>(I)V

    aput-object v4, v3, v11

    .line 3
    sget-object v4, Lkotlin/reflect/jvm/internal/impl/util/OperatorChecks$checks$1;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/util/OperatorChecks$checks$1;

    .line 4
    invoke-direct {v1, v2, v3, v4}, Lkotlin/reflect/jvm/internal/impl/util/Checks;-><init>(Lkotlin/reflect/jvm/internal/impl/name/f;[Lkotlin/reflect/jvm/internal/impl/util/b;Lkotlin/jvm/b/l;)V

    aput-object v1, v0, v11

    .line 5
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/util/Checks;

    sget-object v13, Lkotlin/reflect/jvm/internal/impl/util/h;->a:Lkotlin/reflect/jvm/internal/impl/name/f;

    const/4 v2, 0x4

    new-array v14, v2, [Lkotlin/reflect/jvm/internal/impl/util/b;

    aput-object v9, v14, v10

    sget-object v3, Lkotlin/reflect/jvm/internal/impl/util/g;->a:Lkotlin/reflect/jvm/internal/impl/util/g;

    aput-object v3, v14, v11

    new-instance v4, Lkotlin/reflect/jvm/internal/impl/util/i$a;

    invoke-direct {v4, v8}, Lkotlin/reflect/jvm/internal/impl/util/i$a;-><init>(I)V

    aput-object v4, v14, v8

    sget-object v4, Lkotlin/reflect/jvm/internal/impl/util/d;->a:Lkotlin/reflect/jvm/internal/impl/util/d;

    const/4 v5, 0x3

    aput-object v4, v14, v5

    const/4 v15, 0x0

    const/16 v16, 0x4

    const/16 v17, 0x0

    move-object v12, v1

    invoke-direct/range {v12 .. v17}, Lkotlin/reflect/jvm/internal/impl/util/Checks;-><init>(Lkotlin/reflect/jvm/internal/impl/name/f;[Lkotlin/reflect/jvm/internal/impl/util/b;Lkotlin/jvm/b/l;ILkotlin/jvm/internal/o;)V

    aput-object v1, v0, v8

    .line 6
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/util/Checks;

    sget-object v19, Lkotlin/reflect/jvm/internal/impl/util/h;->b:Lkotlin/reflect/jvm/internal/impl/name/f;

    new-array v6, v2, [Lkotlin/reflect/jvm/internal/impl/util/b;

    aput-object v9, v6, v10

    aput-object v3, v6, v11

    new-instance v7, Lkotlin/reflect/jvm/internal/impl/util/i$a;

    invoke-direct {v7, v5}, Lkotlin/reflect/jvm/internal/impl/util/i$a;-><init>(I)V

    aput-object v7, v6, v8

    aput-object v4, v6, v5

    const/16 v21, 0x0

    const/16 v22, 0x4

    const/16 v23, 0x0

    move-object/from16 v18, v1

    move-object/from16 v20, v6

    invoke-direct/range {v18 .. v23}, Lkotlin/reflect/jvm/internal/impl/util/Checks;-><init>(Lkotlin/reflect/jvm/internal/impl/name/f;[Lkotlin/reflect/jvm/internal/impl/util/b;Lkotlin/jvm/b/l;ILkotlin/jvm/internal/o;)V

    aput-object v1, v0, v5

    .line 7
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/util/Checks;

    sget-object v13, Lkotlin/reflect/jvm/internal/impl/util/h;->c:Lkotlin/reflect/jvm/internal/impl/name/f;

    new-array v14, v2, [Lkotlin/reflect/jvm/internal/impl/util/b;

    aput-object v9, v14, v10

    aput-object v3, v14, v11

    new-instance v6, Lkotlin/reflect/jvm/internal/impl/util/i$b;

    invoke-direct {v6, v8}, Lkotlin/reflect/jvm/internal/impl/util/i$b;-><init>(I)V

    aput-object v6, v14, v8

    aput-object v4, v14, v5

    move-object v12, v1

    invoke-direct/range {v12 .. v17}, Lkotlin/reflect/jvm/internal/impl/util/Checks;-><init>(Lkotlin/reflect/jvm/internal/impl/name/f;[Lkotlin/reflect/jvm/internal/impl/util/b;Lkotlin/jvm/b/l;ILkotlin/jvm/internal/o;)V

    aput-object v1, v0, v2

    .line 8
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/util/Checks;

    sget-object v19, Lkotlin/reflect/jvm/internal/impl/util/h;->g:Lkotlin/reflect/jvm/internal/impl/name/f;

    new-array v4, v11, [Lkotlin/reflect/jvm/internal/impl/util/b;

    aput-object v9, v4, v10

    move-object/from16 v18, v1

    move-object/from16 v20, v4

    invoke-direct/range {v18 .. v23}, Lkotlin/reflect/jvm/internal/impl/util/Checks;-><init>(Lkotlin/reflect/jvm/internal/impl/name/f;[Lkotlin/reflect/jvm/internal/impl/util/b;Lkotlin/jvm/b/l;ILkotlin/jvm/internal/o;)V

    const/4 v4, 0x5

    aput-object v1, v0, v4

    .line 9
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/util/Checks;

    sget-object v13, Lkotlin/reflect/jvm/internal/impl/util/h;->f:Lkotlin/reflect/jvm/internal/impl/name/f;

    new-array v14, v2, [Lkotlin/reflect/jvm/internal/impl/util/b;

    aput-object v9, v14, v10

    sget-object v4, Lkotlin/reflect/jvm/internal/impl/util/i$d;->b:Lkotlin/reflect/jvm/internal/impl/util/i$d;

    aput-object v4, v14, v11

    aput-object v3, v14, v8

    sget-object v6, Lkotlin/reflect/jvm/internal/impl/util/ReturnsCheck$ReturnsBoolean;->d:Lkotlin/reflect/jvm/internal/impl/util/ReturnsCheck$ReturnsBoolean;

    aput-object v6, v14, v5

    move-object v12, v1

    invoke-direct/range {v12 .. v17}, Lkotlin/reflect/jvm/internal/impl/util/Checks;-><init>(Lkotlin/reflect/jvm/internal/impl/name/f;[Lkotlin/reflect/jvm/internal/impl/util/b;Lkotlin/jvm/b/l;ILkotlin/jvm/internal/o;)V

    const/4 v7, 0x6

    aput-object v1, v0, v7

    .line 10
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/util/Checks;

    sget-object v13, Lkotlin/reflect/jvm/internal/impl/util/h;->h:Lkotlin/reflect/jvm/internal/impl/name/f;

    new-array v14, v8, [Lkotlin/reflect/jvm/internal/impl/util/b;

    aput-object v9, v14, v10

    sget-object v7, Lkotlin/reflect/jvm/internal/impl/util/i$c;->b:Lkotlin/reflect/jvm/internal/impl/util/i$c;

    aput-object v7, v14, v11

    move-object v12, v1

    invoke-direct/range {v12 .. v17}, Lkotlin/reflect/jvm/internal/impl/util/Checks;-><init>(Lkotlin/reflect/jvm/internal/impl/name/f;[Lkotlin/reflect/jvm/internal/impl/util/b;Lkotlin/jvm/b/l;ILkotlin/jvm/internal/o;)V

    const/4 v12, 0x7

    aput-object v1, v0, v12

    .line 11
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/util/Checks;

    sget-object v14, Lkotlin/reflect/jvm/internal/impl/util/h;->k:Lkotlin/reflect/jvm/internal/impl/name/f;

    new-array v15, v8, [Lkotlin/reflect/jvm/internal/impl/util/b;

    aput-object v9, v15, v10

    aput-object v7, v15, v11

    const/16 v16, 0x0

    const/16 v17, 0x4

    const/16 v18, 0x0

    move-object v13, v1

    invoke-direct/range {v13 .. v18}, Lkotlin/reflect/jvm/internal/impl/util/Checks;-><init>(Lkotlin/reflect/jvm/internal/impl/name/f;[Lkotlin/reflect/jvm/internal/impl/util/b;Lkotlin/jvm/b/l;ILkotlin/jvm/internal/o;)V

    const/16 v12, 0x8

    aput-object v1, v0, v12

    .line 12
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/util/Checks;

    sget-object v14, Lkotlin/reflect/jvm/internal/impl/util/h;->l:Lkotlin/reflect/jvm/internal/impl/name/f;

    new-array v15, v5, [Lkotlin/reflect/jvm/internal/impl/util/b;

    aput-object v9, v15, v10

    aput-object v7, v15, v11

    aput-object v6, v15, v8

    move-object v13, v1

    invoke-direct/range {v13 .. v18}, Lkotlin/reflect/jvm/internal/impl/util/Checks;-><init>(Lkotlin/reflect/jvm/internal/impl/name/f;[Lkotlin/reflect/jvm/internal/impl/util/b;Lkotlin/jvm/b/l;ILkotlin/jvm/internal/o;)V

    const/16 v6, 0x9

    aput-object v1, v0, v6

    .line 13
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/util/Checks;

    sget-object v13, Lkotlin/reflect/jvm/internal/impl/util/h;->y:Lkotlin/reflect/jvm/internal/impl/name/f;

    new-array v14, v5, [Lkotlin/reflect/jvm/internal/impl/util/b;

    aput-object v9, v14, v10

    aput-object v4, v14, v11

    aput-object v3, v14, v8

    const/4 v15, 0x0

    const/16 v16, 0x4

    const/16 v17, 0x0

    move-object v12, v1

    invoke-direct/range {v12 .. v17}, Lkotlin/reflect/jvm/internal/impl/util/Checks;-><init>(Lkotlin/reflect/jvm/internal/impl/name/f;[Lkotlin/reflect/jvm/internal/impl/util/b;Lkotlin/jvm/b/l;ILkotlin/jvm/internal/o;)V

    const/16 v6, 0xa

    aput-object v1, v0, v6

    .line 14
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/util/Checks;

    sget-object v6, Lkotlin/reflect/jvm/internal/impl/util/h;->d:Lkotlin/reflect/jvm/internal/impl/name/f;

    new-array v12, v11, [Lkotlin/reflect/jvm/internal/impl/util/b;

    sget-object v13, Lkotlin/reflect/jvm/internal/impl/util/e$a;->b:Lkotlin/reflect/jvm/internal/impl/util/e$a;

    aput-object v13, v12, v10

    .line 15
    sget-object v13, Lkotlin/reflect/jvm/internal/impl/util/OperatorChecks$checks$2;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/util/OperatorChecks$checks$2;

    .line 16
    invoke-direct {v1, v6, v12, v13}, Lkotlin/reflect/jvm/internal/impl/util/Checks;-><init>(Lkotlin/reflect/jvm/internal/impl/name/f;[Lkotlin/reflect/jvm/internal/impl/util/b;Lkotlin/jvm/b/l;)V

    const/16 v6, 0xb

    aput-object v1, v0, v6

    .line 17
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/util/Checks;

    sget-object v13, Lkotlin/reflect/jvm/internal/impl/util/h;->e:Lkotlin/reflect/jvm/internal/impl/name/f;

    new-array v14, v2, [Lkotlin/reflect/jvm/internal/impl/util/b;

    aput-object v9, v14, v10

    sget-object v6, Lkotlin/reflect/jvm/internal/impl/util/ReturnsCheck$ReturnsInt;->d:Lkotlin/reflect/jvm/internal/impl/util/ReturnsCheck$ReturnsInt;

    aput-object v6, v14, v11

    aput-object v4, v14, v8

    aput-object v3, v14, v5

    move-object v12, v1

    invoke-direct/range {v12 .. v17}, Lkotlin/reflect/jvm/internal/impl/util/Checks;-><init>(Lkotlin/reflect/jvm/internal/impl/name/f;[Lkotlin/reflect/jvm/internal/impl/util/b;Lkotlin/jvm/b/l;ILkotlin/jvm/internal/o;)V

    const/16 v6, 0xc

    aput-object v1, v0, v6

    .line 18
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/util/Checks;

    sget-object v13, Lkotlin/reflect/jvm/internal/impl/util/h;->G:Ljava/util/Set;

    new-array v14, v5, [Lkotlin/reflect/jvm/internal/impl/util/b;

    aput-object v9, v14, v10

    aput-object v4, v14, v11

    aput-object v3, v14, v8

    move-object v12, v1

    invoke-direct/range {v12 .. v17}, Lkotlin/reflect/jvm/internal/impl/util/Checks;-><init>(Ljava/util/Collection;[Lkotlin/reflect/jvm/internal/impl/util/b;Lkotlin/jvm/b/l;ILkotlin/jvm/internal/o;)V

    const/16 v6, 0xd

    aput-object v1, v0, v6

    .line 19
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/util/Checks;

    sget-object v13, Lkotlin/reflect/jvm/internal/impl/util/h;->F:Ljava/util/Set;

    new-array v14, v8, [Lkotlin/reflect/jvm/internal/impl/util/b;

    aput-object v9, v14, v10

    aput-object v7, v14, v11

    move-object v12, v1

    invoke-direct/range {v12 .. v17}, Lkotlin/reflect/jvm/internal/impl/util/Checks;-><init>(Ljava/util/Collection;[Lkotlin/reflect/jvm/internal/impl/util/b;Lkotlin/jvm/b/l;ILkotlin/jvm/internal/o;)V

    const/16 v6, 0xe

    aput-object v1, v0, v6

    .line 20
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/util/Checks;

    new-array v6, v8, [Lkotlin/reflect/jvm/internal/impl/name/f;

    sget-object v12, Lkotlin/reflect/jvm/internal/impl/util/h;->n:Lkotlin/reflect/jvm/internal/impl/name/f;

    aput-object v12, v6, v10

    sget-object v12, Lkotlin/reflect/jvm/internal/impl/util/h;->o:Lkotlin/reflect/jvm/internal/impl/name/f;

    aput-object v12, v6, v11

    invoke-static {v6}, Lkotlin/collections/s;->m([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    new-array v12, v11, [Lkotlin/reflect/jvm/internal/impl/util/b;

    aput-object v9, v12, v10

    .line 21
    sget-object v13, Lkotlin/reflect/jvm/internal/impl/util/OperatorChecks$checks$3;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/util/OperatorChecks$checks$3;

    .line 22
    invoke-direct {v1, v6, v12, v13}, Lkotlin/reflect/jvm/internal/impl/util/Checks;-><init>(Ljava/util/Collection;[Lkotlin/reflect/jvm/internal/impl/util/b;Lkotlin/jvm/b/l;)V

    const/16 v6, 0xf

    aput-object v1, v0, v6

    .line 23
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/util/Checks;

    sget-object v13, Lkotlin/reflect/jvm/internal/impl/util/h;->H:Ljava/util/Set;

    new-array v14, v2, [Lkotlin/reflect/jvm/internal/impl/util/b;

    aput-object v9, v14, v10

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/util/ReturnsCheck$ReturnsUnit;->d:Lkotlin/reflect/jvm/internal/impl/util/ReturnsCheck$ReturnsUnit;

    aput-object v2, v14, v11

    aput-object v4, v14, v8

    aput-object v3, v14, v5

    move-object v12, v1

    invoke-direct/range {v12 .. v17}, Lkotlin/reflect/jvm/internal/impl/util/Checks;-><init>(Ljava/util/Collection;[Lkotlin/reflect/jvm/internal/impl/util/b;Lkotlin/jvm/b/l;ILkotlin/jvm/internal/o;)V

    const/16 v2, 0x10

    aput-object v1, v0, v2

    .line 24
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/util/Checks;

    sget-object v13, Lkotlin/reflect/jvm/internal/impl/util/h;->m:Lkotlin/text/Regex;

    new-array v14, v8, [Lkotlin/reflect/jvm/internal/impl/util/b;

    aput-object v9, v14, v10

    aput-object v7, v14, v11

    move-object v12, v1

    invoke-direct/range {v12 .. v17}, Lkotlin/reflect/jvm/internal/impl/util/Checks;-><init>(Lkotlin/text/Regex;[Lkotlin/reflect/jvm/internal/impl/util/b;Lkotlin/jvm/b/l;ILkotlin/jvm/internal/o;)V

    const/16 v2, 0x11

    aput-object v1, v0, v2

    .line 25
    invoke-static {v0}, Lkotlin/collections/s;->m([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/util/OperatorChecks;->b:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/util/a;-><init>()V

    return-void
.end method


# virtual methods
.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/util/Checks;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/util/OperatorChecks;->b:Ljava/util/List;

    return-object v0
.end method
