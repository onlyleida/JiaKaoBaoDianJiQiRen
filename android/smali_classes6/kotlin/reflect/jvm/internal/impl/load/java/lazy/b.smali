.class public final Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lkotlin/reflect/jvm/internal/impl/storage/m;

.field private final b:Lkotlin/reflect/jvm/internal/impl/load/java/i;

.field private final c:Lkotlin/reflect/jvm/internal/impl/load/kotlin/k;

.field private final d:Lkotlin/reflect/jvm/internal/impl/load/kotlin/DeserializedDescriptorResolver;

.field private final e:Lkotlin/reflect/jvm/internal/impl/load/java/components/e;

.field private final f:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/l;

.field private final g:Lkotlin/reflect/jvm/internal/impl/load/java/components/d;

.field private final h:Lkotlin/reflect/jvm/internal/impl/load/java/components/c;

.field private final i:Lkotlin/reflect/jvm/internal/impl/resolve/n/a;

.field private final j:Lkotlin/reflect/jvm/internal/impl/load/java/w/b;

.field private final k:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/f;

.field private final l:Lkotlin/reflect/jvm/internal/impl/load/kotlin/s;

.field private final m:Lkotlin/reflect/jvm/internal/impl/descriptors/r0;

.field private final n:Lkotlin/reflect/jvm/internal/impl/incremental/components/c;

.field private final o:Lkotlin/reflect/jvm/internal/impl/descriptors/z;

.field private final p:Lkotlin/reflect/jvm/internal/impl/builtins/ReflectionTypes;

.field private final q:Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationTypeQualifierResolver;

.field private final r:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancement;

.field private final s:Lkotlin/reflect/jvm/internal/impl/load/java/j;

.field private final t:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/c;

.field private final u:Lkotlin/reflect/jvm/internal/impl/types/checker/k;

.field private final v:Lkotlin/reflect/jvm/internal/impl/load/java/JavaTypeEnhancementState;

.field private final w:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/a;

.field private final x:Lkotlin/reflect/jvm/internal/impl/resolve/jvm/e;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/storage/m;Lkotlin/reflect/jvm/internal/impl/load/java/i;Lkotlin/reflect/jvm/internal/impl/load/kotlin/k;Lkotlin/reflect/jvm/internal/impl/load/kotlin/DeserializedDescriptorResolver;Lkotlin/reflect/jvm/internal/impl/load/java/components/e;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/l;Lkotlin/reflect/jvm/internal/impl/load/java/components/d;Lkotlin/reflect/jvm/internal/impl/load/java/components/c;Lkotlin/reflect/jvm/internal/impl/resolve/n/a;Lkotlin/reflect/jvm/internal/impl/load/java/w/b;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/f;Lkotlin/reflect/jvm/internal/impl/load/kotlin/s;Lkotlin/reflect/jvm/internal/impl/descriptors/r0;Lkotlin/reflect/jvm/internal/impl/incremental/components/c;Lkotlin/reflect/jvm/internal/impl/descriptors/z;Lkotlin/reflect/jvm/internal/impl/builtins/ReflectionTypes;Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationTypeQualifierResolver;Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancement;Lkotlin/reflect/jvm/internal/impl/load/java/j;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/c;Lkotlin/reflect/jvm/internal/impl/types/checker/k;Lkotlin/reflect/jvm/internal/impl/load/java/JavaTypeEnhancementState;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/a;Lkotlin/reflect/jvm/internal/impl/resolve/jvm/e;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    move-object/from16 v0, p16

    const-string v0, "storageManager"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "finder"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kotlinClassFinder"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deserializedDescriptorResolver"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "signaturePropagator"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorReporter"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "javaResolverCache"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "javaPropertyInitializerEvaluator"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "samConversionResolver"

    invoke-static {v9, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sourceElementFactory"

    invoke-static {v10, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "moduleClassResolver"

    invoke-static {v11, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "packagePartProvider"

    invoke-static {v12, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "supertypeLoopChecker"

    invoke-static {v13, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lookupTracker"

    invoke-static {v14, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "module"

    invoke-static {v15, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reflectionTypes"

    move-object/from16 v15, p16

    invoke-static {v15, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "annotationTypeQualifierResolver"

    move-object/from16 v15, p17

    invoke-static {v15, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "signatureEnhancement"

    move-object/from16 v15, p18

    invoke-static {v15, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "javaClassesTracker"

    move-object/from16 v15, p19

    invoke-static {v15, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "settings"

    move-object/from16 v15, p20

    invoke-static {v15, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kotlinTypeChecker"

    move-object/from16 v15, p21

    invoke-static {v15, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "javaTypeEnhancementState"

    move-object/from16 v15, p22

    invoke-static {v15, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "javaModuleResolver"

    move-object/from16 v15, p23

    invoke-static {v15, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "syntheticPartsProvider"

    move-object/from16 v15, p24

    invoke-static {v15, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v15, p16

    .line 2
    iput-object v1, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->a:Lkotlin/reflect/jvm/internal/impl/storage/m;

    .line 3
    iput-object v2, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->b:Lkotlin/reflect/jvm/internal/impl/load/java/i;

    .line 4
    iput-object v3, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->c:Lkotlin/reflect/jvm/internal/impl/load/kotlin/k;

    .line 5
    iput-object v4, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->d:Lkotlin/reflect/jvm/internal/impl/load/kotlin/DeserializedDescriptorResolver;

    .line 6
    iput-object v5, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->e:Lkotlin/reflect/jvm/internal/impl/load/java/components/e;

    .line 7
    iput-object v6, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->f:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/l;

    .line 8
    iput-object v7, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->g:Lkotlin/reflect/jvm/internal/impl/load/java/components/d;

    .line 9
    iput-object v8, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->h:Lkotlin/reflect/jvm/internal/impl/load/java/components/c;

    .line 10
    iput-object v9, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->i:Lkotlin/reflect/jvm/internal/impl/resolve/n/a;

    .line 11
    iput-object v10, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->j:Lkotlin/reflect/jvm/internal/impl/load/java/w/b;

    .line 12
    iput-object v11, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->k:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/f;

    .line 13
    iput-object v12, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->l:Lkotlin/reflect/jvm/internal/impl/load/kotlin/s;

    .line 14
    iput-object v13, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->m:Lkotlin/reflect/jvm/internal/impl/descriptors/r0;

    .line 15
    iput-object v14, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->n:Lkotlin/reflect/jvm/internal/impl/incremental/components/c;

    move-object/from16 v1, p15

    .line 16
    iput-object v1, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->o:Lkotlin/reflect/jvm/internal/impl/descriptors/z;

    .line 17
    iput-object v15, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->p:Lkotlin/reflect/jvm/internal/impl/builtins/ReflectionTypes;

    move-object/from16 v1, p17

    move-object/from16 v2, p18

    .line 18
    iput-object v1, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->q:Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationTypeQualifierResolver;

    .line 19
    iput-object v2, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->r:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancement;

    move-object/from16 v1, p19

    move-object/from16 v2, p20

    .line 20
    iput-object v1, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->s:Lkotlin/reflect/jvm/internal/impl/load/java/j;

    .line 21
    iput-object v2, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->t:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/c;

    move-object/from16 v1, p21

    move-object/from16 v2, p22

    .line 22
    iput-object v1, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->u:Lkotlin/reflect/jvm/internal/impl/types/checker/k;

    .line 23
    iput-object v2, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->v:Lkotlin/reflect/jvm/internal/impl/load/java/JavaTypeEnhancementState;

    move-object/from16 v1, p23

    move-object/from16 v2, p24

    .line 24
    iput-object v1, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->w:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/a;

    .line 25
    iput-object v2, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->x:Lkotlin/reflect/jvm/internal/impl/resolve/jvm/e;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/reflect/jvm/internal/impl/storage/m;Lkotlin/reflect/jvm/internal/impl/load/java/i;Lkotlin/reflect/jvm/internal/impl/load/kotlin/k;Lkotlin/reflect/jvm/internal/impl/load/kotlin/DeserializedDescriptorResolver;Lkotlin/reflect/jvm/internal/impl/load/java/components/e;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/l;Lkotlin/reflect/jvm/internal/impl/load/java/components/d;Lkotlin/reflect/jvm/internal/impl/load/java/components/c;Lkotlin/reflect/jvm/internal/impl/resolve/n/a;Lkotlin/reflect/jvm/internal/impl/load/java/w/b;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/f;Lkotlin/reflect/jvm/internal/impl/load/kotlin/s;Lkotlin/reflect/jvm/internal/impl/descriptors/r0;Lkotlin/reflect/jvm/internal/impl/incremental/components/c;Lkotlin/reflect/jvm/internal/impl/descriptors/z;Lkotlin/reflect/jvm/internal/impl/builtins/ReflectionTypes;Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationTypeQualifierResolver;Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancement;Lkotlin/reflect/jvm/internal/impl/load/java/j;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/c;Lkotlin/reflect/jvm/internal/impl/types/checker/k;Lkotlin/reflect/jvm/internal/impl/load/java/JavaTypeEnhancementState;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/a;Lkotlin/reflect/jvm/internal/impl/resolve/jvm/e;ILkotlin/jvm/internal/o;)V
    .locals 26

    const/high16 v0, 0x800000

    and-int v0, p25, v0

    if-eqz v0, :cond_0

    .line 26
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/e;->a:Lkotlin/reflect/jvm/internal/impl/resolve/jvm/e$a;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/e$a;->a()Lkotlin/reflect/jvm/internal/impl/resolve/jvm/a;

    move-result-object v0

    move-object/from16 v25, v0

    goto :goto_0

    :cond_0
    move-object/from16 v25, p24

    :goto_0
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    move-object/from16 v18, p17

    move-object/from16 v19, p18

    move-object/from16 v20, p19

    move-object/from16 v21, p20

    move-object/from16 v22, p21

    move-object/from16 v23, p22

    move-object/from16 v24, p23

    .line 27
    invoke-direct/range {v1 .. v25}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;-><init>(Lkotlin/reflect/jvm/internal/impl/storage/m;Lkotlin/reflect/jvm/internal/impl/load/java/i;Lkotlin/reflect/jvm/internal/impl/load/kotlin/k;Lkotlin/reflect/jvm/internal/impl/load/kotlin/DeserializedDescriptorResolver;Lkotlin/reflect/jvm/internal/impl/load/java/components/e;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/l;Lkotlin/reflect/jvm/internal/impl/load/java/components/d;Lkotlin/reflect/jvm/internal/impl/load/java/components/c;Lkotlin/reflect/jvm/internal/impl/resolve/n/a;Lkotlin/reflect/jvm/internal/impl/load/java/w/b;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/f;Lkotlin/reflect/jvm/internal/impl/load/kotlin/s;Lkotlin/reflect/jvm/internal/impl/descriptors/r0;Lkotlin/reflect/jvm/internal/impl/incremental/components/c;Lkotlin/reflect/jvm/internal/impl/descriptors/z;Lkotlin/reflect/jvm/internal/impl/builtins/ReflectionTypes;Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationTypeQualifierResolver;Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancement;Lkotlin/reflect/jvm/internal/impl/load/java/j;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/c;Lkotlin/reflect/jvm/internal/impl/types/checker/k;Lkotlin/reflect/jvm/internal/impl/load/java/JavaTypeEnhancementState;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/a;Lkotlin/reflect/jvm/internal/impl/resolve/jvm/e;)V

    return-void
.end method


# virtual methods
.method public final a()Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationTypeQualifierResolver;
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->q:Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationTypeQualifierResolver;

    return-object v0
.end method

.method public final b()Lkotlin/reflect/jvm/internal/impl/load/kotlin/DeserializedDescriptorResolver;
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->d:Lkotlin/reflect/jvm/internal/impl/load/kotlin/DeserializedDescriptorResolver;

    return-object v0
.end method

.method public final c()Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/l;
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->f:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/l;

    return-object v0
.end method

.method public final d()Lkotlin/reflect/jvm/internal/impl/load/java/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->b:Lkotlin/reflect/jvm/internal/impl/load/java/i;

    return-object v0
.end method

.method public final e()Lkotlin/reflect/jvm/internal/impl/load/java/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->s:Lkotlin/reflect/jvm/internal/impl/load/java/j;

    return-object v0
.end method

.method public final f()Lkotlin/reflect/jvm/internal/impl/load/java/lazy/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->w:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/a;

    return-object v0
.end method

.method public final g()Lkotlin/reflect/jvm/internal/impl/load/java/components/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->h:Lkotlin/reflect/jvm/internal/impl/load/java/components/c;

    return-object v0
.end method

.method public final h()Lkotlin/reflect/jvm/internal/impl/load/java/components/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->g:Lkotlin/reflect/jvm/internal/impl/load/java/components/d;

    return-object v0
.end method

.method public final i()Lkotlin/reflect/jvm/internal/impl/load/java/JavaTypeEnhancementState;
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->v:Lkotlin/reflect/jvm/internal/impl/load/java/JavaTypeEnhancementState;

    return-object v0
.end method

.method public final j()Lkotlin/reflect/jvm/internal/impl/load/kotlin/k;
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->c:Lkotlin/reflect/jvm/internal/impl/load/kotlin/k;

    return-object v0
.end method

.method public final k()Lkotlin/reflect/jvm/internal/impl/types/checker/k;
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->u:Lkotlin/reflect/jvm/internal/impl/types/checker/k;

    return-object v0
.end method

.method public final l()Lkotlin/reflect/jvm/internal/impl/incremental/components/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->n:Lkotlin/reflect/jvm/internal/impl/incremental/components/c;

    return-object v0
.end method

.method public final m()Lkotlin/reflect/jvm/internal/impl/descriptors/z;
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->o:Lkotlin/reflect/jvm/internal/impl/descriptors/z;

    return-object v0
.end method

.method public final n()Lkotlin/reflect/jvm/internal/impl/load/java/lazy/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->k:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/f;

    return-object v0
.end method

.method public final o()Lkotlin/reflect/jvm/internal/impl/load/kotlin/s;
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->l:Lkotlin/reflect/jvm/internal/impl/load/kotlin/s;

    return-object v0
.end method

.method public final p()Lkotlin/reflect/jvm/internal/impl/builtins/ReflectionTypes;
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->p:Lkotlin/reflect/jvm/internal/impl/builtins/ReflectionTypes;

    return-object v0
.end method

.method public final q()Lkotlin/reflect/jvm/internal/impl/load/java/lazy/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->t:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/c;

    return-object v0
.end method

.method public final r()Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancement;
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->r:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancement;

    return-object v0
.end method

.method public final s()Lkotlin/reflect/jvm/internal/impl/load/java/components/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->e:Lkotlin/reflect/jvm/internal/impl/load/java/components/e;

    return-object v0
.end method

.method public final t()Lkotlin/reflect/jvm/internal/impl/load/java/w/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->j:Lkotlin/reflect/jvm/internal/impl/load/java/w/b;

    return-object v0
.end method

.method public final u()Lkotlin/reflect/jvm/internal/impl/storage/m;
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->a:Lkotlin/reflect/jvm/internal/impl/storage/m;

    return-object v0
.end method

.method public final v()Lkotlin/reflect/jvm/internal/impl/descriptors/r0;
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->m:Lkotlin/reflect/jvm/internal/impl/descriptors/r0;

    return-object v0
.end method

.method public final w()Lkotlin/reflect/jvm/internal/impl/resolve/jvm/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->x:Lkotlin/reflect/jvm/internal/impl/resolve/jvm/e;

    return-object v0
.end method

.method public final x(Lkotlin/reflect/jvm/internal/impl/load/java/components/d;)Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    const-string v1, "javaResolverCache"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v28, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;

    move-object/from16 v1, v28

    .line 2
    iget-object v2, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->a:Lkotlin/reflect/jvm/internal/impl/storage/m;

    iget-object v3, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->b:Lkotlin/reflect/jvm/internal/impl/load/java/i;

    iget-object v4, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->c:Lkotlin/reflect/jvm/internal/impl/load/kotlin/k;

    iget-object v5, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->d:Lkotlin/reflect/jvm/internal/impl/load/kotlin/DeserializedDescriptorResolver;

    .line 3
    iget-object v6, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->e:Lkotlin/reflect/jvm/internal/impl/load/java/components/e;

    iget-object v7, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->f:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/l;

    .line 4
    iget-object v9, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->h:Lkotlin/reflect/jvm/internal/impl/load/java/components/c;

    iget-object v10, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->i:Lkotlin/reflect/jvm/internal/impl/resolve/n/a;

    iget-object v11, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->j:Lkotlin/reflect/jvm/internal/impl/load/java/w/b;

    .line 5
    iget-object v12, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->k:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/f;

    iget-object v13, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->l:Lkotlin/reflect/jvm/internal/impl/load/kotlin/s;

    iget-object v14, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->m:Lkotlin/reflect/jvm/internal/impl/descriptors/r0;

    iget-object v15, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->n:Lkotlin/reflect/jvm/internal/impl/incremental/components/c;

    move-object/from16 p1, v1

    iget-object v1, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->o:Lkotlin/reflect/jvm/internal/impl/descriptors/z;

    move-object/from16 v16, v1

    iget-object v1, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->p:Lkotlin/reflect/jvm/internal/impl/builtins/ReflectionTypes;

    move-object/from16 v17, v1

    .line 6
    iget-object v1, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->q:Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationTypeQualifierResolver;

    move-object/from16 v18, v1

    iget-object v1, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->r:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancement;

    move-object/from16 v19, v1

    iget-object v1, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->s:Lkotlin/reflect/jvm/internal/impl/load/java/j;

    move-object/from16 v20, v1

    iget-object v1, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->t:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/c;

    move-object/from16 v21, v1

    .line 7
    iget-object v1, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->u:Lkotlin/reflect/jvm/internal/impl/types/checker/k;

    move-object/from16 v22, v1

    iget-object v1, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->v:Lkotlin/reflect/jvm/internal/impl/load/java/JavaTypeEnhancementState;

    move-object/from16 v23, v1

    iget-object v1, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->w:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/a;

    move-object/from16 v24, v1

    const/16 v25, 0x0

    const/high16 v26, 0x800000

    const/16 v27, 0x0

    move-object/from16 v1, p1

    .line 8
    invoke-direct/range {v1 .. v27}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;-><init>(Lkotlin/reflect/jvm/internal/impl/storage/m;Lkotlin/reflect/jvm/internal/impl/load/java/i;Lkotlin/reflect/jvm/internal/impl/load/kotlin/k;Lkotlin/reflect/jvm/internal/impl/load/kotlin/DeserializedDescriptorResolver;Lkotlin/reflect/jvm/internal/impl/load/java/components/e;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/l;Lkotlin/reflect/jvm/internal/impl/load/java/components/d;Lkotlin/reflect/jvm/internal/impl/load/java/components/c;Lkotlin/reflect/jvm/internal/impl/resolve/n/a;Lkotlin/reflect/jvm/internal/impl/load/java/w/b;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/f;Lkotlin/reflect/jvm/internal/impl/load/kotlin/s;Lkotlin/reflect/jvm/internal/impl/descriptors/r0;Lkotlin/reflect/jvm/internal/impl/incremental/components/c;Lkotlin/reflect/jvm/internal/impl/descriptors/z;Lkotlin/reflect/jvm/internal/impl/builtins/ReflectionTypes;Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationTypeQualifierResolver;Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancement;Lkotlin/reflect/jvm/internal/impl/load/java/j;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/c;Lkotlin/reflect/jvm/internal/impl/types/checker/k;Lkotlin/reflect/jvm/internal/impl/load/java/JavaTypeEnhancementState;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/a;Lkotlin/reflect/jvm/internal/impl/resolve/jvm/e;ILkotlin/jvm/internal/o;)V

    return-object v28
.end method
