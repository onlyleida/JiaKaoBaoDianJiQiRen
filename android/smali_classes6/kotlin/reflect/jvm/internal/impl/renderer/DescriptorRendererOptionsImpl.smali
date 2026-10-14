.class public final Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/renderer/b;


# static fields
.field static final synthetic X:[Lkotlin/reflect/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlin/reflect/l<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final A:Lkotlin/z/c;

.field private final B:Lkotlin/z/c;

.field private final C:Lkotlin/z/c;

.field private final D:Lkotlin/z/c;

.field private final E:Lkotlin/z/c;

.field private final F:Lkotlin/z/c;

.field private final G:Lkotlin/z/c;

.field private final H:Lkotlin/z/c;

.field private final I:Lkotlin/z/c;

.field private final J:Lkotlin/z/c;

.field private final K:Lkotlin/z/c;

.field private final L:Lkotlin/z/c;

.field private final M:Lkotlin/z/c;

.field private final N:Lkotlin/z/c;

.field private final O:Lkotlin/z/c;

.field private final P:Lkotlin/z/c;

.field private final Q:Lkotlin/z/c;

.field private final R:Lkotlin/z/c;

.field private final S:Lkotlin/z/c;

.field private final T:Lkotlin/z/c;

.field private final U:Lkotlin/z/c;

.field private final V:Lkotlin/z/c;

.field private final W:Lkotlin/z/c;

.field private a:Z

.field private final b:Lkotlin/z/c;

.field private final c:Lkotlin/z/c;

.field private final d:Lkotlin/z/c;

.field private final e:Lkotlin/z/c;

.field private final f:Lkotlin/z/c;

.field private final g:Lkotlin/z/c;

.field private final h:Lkotlin/z/c;

.field private final i:Lkotlin/z/c;

.field private final j:Lkotlin/z/c;

.field private final k:Lkotlin/z/c;

.field private final l:Lkotlin/z/c;

.field private final m:Lkotlin/z/c;

.field private final n:Lkotlin/z/c;

.field private final o:Lkotlin/z/c;

.field private final p:Lkotlin/z/c;

.field private final q:Lkotlin/z/c;

.field private final r:Lkotlin/z/c;

.field private final s:Lkotlin/z/c;

.field private final t:Lkotlin/z/c;

.field private final u:Lkotlin/z/c;

.field private final v:Lkotlin/z/c;

.field private final w:Lkotlin/z/c;

.field private final x:Lkotlin/z/c;

.field private final y:Lkotlin/z/c;

.field private final z:Lkotlin/z/c;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;

    const/16 v1, 0x30

    new-array v1, v1, [Lkotlin/reflect/l;

    .line 1
    new-instance v2, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    invoke-static {v0}, Lkotlin/jvm/internal/v;->b(Ljava/lang/Class;)Lkotlin/reflect/d;

    move-result-object v3

    const-string v4, "classifierNamePolicy"

    const-string v5, "getClassifierNamePolicy()Lorg/jetbrains/kotlin/renderer/ClassifierNamePolicy;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Lkotlin/reflect/f;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/v;->f(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/j;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 2
    new-instance v2, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    invoke-static {v0}, Lkotlin/jvm/internal/v;->b(Ljava/lang/Class;)Lkotlin/reflect/d;

    move-result-object v3

    const-string v4, "withDefinedIn"

    const-string v5, "getWithDefinedIn()Z"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Lkotlin/reflect/f;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/v;->f(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/j;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 3
    new-instance v2, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    invoke-static {v0}, Lkotlin/jvm/internal/v;->b(Ljava/lang/Class;)Lkotlin/reflect/d;

    move-result-object v3

    const-string v4, "withSourceFileForTopLevel"

    const-string v5, "getWithSourceFileForTopLevel()Z"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Lkotlin/reflect/f;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/v;->f(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/j;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 4
    new-instance v2, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    invoke-static {v0}, Lkotlin/jvm/internal/v;->b(Ljava/lang/Class;)Lkotlin/reflect/d;

    move-result-object v3

    const-string v4, "modifiers"

    const-string v5, "getModifiers()Ljava/util/Set;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Lkotlin/reflect/f;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/v;->f(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/j;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 5
    new-instance v2, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    invoke-static {v0}, Lkotlin/jvm/internal/v;->b(Ljava/lang/Class;)Lkotlin/reflect/d;

    move-result-object v3

    const-string v4, "startFromName"

    const-string v5, "getStartFromName()Z"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Lkotlin/reflect/f;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/v;->f(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/j;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    .line 6
    new-instance v2, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    invoke-static {v0}, Lkotlin/jvm/internal/v;->b(Ljava/lang/Class;)Lkotlin/reflect/d;

    move-result-object v3

    const-string v4, "startFromDeclarationKeyword"

    const-string v5, "getStartFromDeclarationKeyword()Z"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Lkotlin/reflect/f;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/v;->f(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/j;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v1, v3

    .line 7
    new-instance v2, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    invoke-static {v0}, Lkotlin/jvm/internal/v;->b(Ljava/lang/Class;)Lkotlin/reflect/d;

    move-result-object v3

    const-string v4, "debugMode"

    const-string v5, "getDebugMode()Z"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Lkotlin/reflect/f;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/v;->f(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/j;

    move-result-object v2

    const/4 v3, 0x6

    aput-object v2, v1, v3

    .line 8
    new-instance v2, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    invoke-static {v0}, Lkotlin/jvm/internal/v;->b(Ljava/lang/Class;)Lkotlin/reflect/d;

    move-result-object v3

    const-string v4, "classWithPrimaryConstructor"

    const-string v5, "getClassWithPrimaryConstructor()Z"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Lkotlin/reflect/f;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/v;->f(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/j;

    move-result-object v2

    const/4 v3, 0x7

    aput-object v2, v1, v3

    .line 9
    new-instance v2, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    invoke-static {v0}, Lkotlin/jvm/internal/v;->b(Ljava/lang/Class;)Lkotlin/reflect/d;

    move-result-object v3

    const-string v4, "verbose"

    const-string v5, "getVerbose()Z"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Lkotlin/reflect/f;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/v;->f(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/j;

    move-result-object v2

    const/16 v3, 0x8

    aput-object v2, v1, v3

    .line 10
    new-instance v2, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    invoke-static {v0}, Lkotlin/jvm/internal/v;->b(Ljava/lang/Class;)Lkotlin/reflect/d;

    move-result-object v3

    const-string v4, "unitReturnType"

    const-string v5, "getUnitReturnType()Z"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Lkotlin/reflect/f;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/v;->f(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/j;

    move-result-object v2

    const/16 v3, 0x9

    aput-object v2, v1, v3

    .line 11
    new-instance v2, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    invoke-static {v0}, Lkotlin/jvm/internal/v;->b(Ljava/lang/Class;)Lkotlin/reflect/d;

    move-result-object v3

    const-string v4, "withoutReturnType"

    const-string v5, "getWithoutReturnType()Z"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Lkotlin/reflect/f;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/v;->f(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/j;

    move-result-object v2

    const/16 v3, 0xa

    aput-object v2, v1, v3

    .line 12
    new-instance v2, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    invoke-static {v0}, Lkotlin/jvm/internal/v;->b(Ljava/lang/Class;)Lkotlin/reflect/d;

    move-result-object v3

    const-string v4, "enhancedTypes"

    const-string v5, "getEnhancedTypes()Z"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Lkotlin/reflect/f;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/v;->f(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/j;

    move-result-object v2

    const/16 v3, 0xb

    aput-object v2, v1, v3

    .line 13
    new-instance v2, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    invoke-static {v0}, Lkotlin/jvm/internal/v;->b(Ljava/lang/Class;)Lkotlin/reflect/d;

    move-result-object v3

    const-string v4, "normalizedVisibilities"

    const-string v5, "getNormalizedVisibilities()Z"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Lkotlin/reflect/f;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/v;->f(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/j;

    move-result-object v2

    const/16 v3, 0xc

    aput-object v2, v1, v3

    .line 14
    new-instance v2, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    invoke-static {v0}, Lkotlin/jvm/internal/v;->b(Ljava/lang/Class;)Lkotlin/reflect/d;

    move-result-object v3

    const-string v4, "renderDefaultVisibility"

    const-string v5, "getRenderDefaultVisibility()Z"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Lkotlin/reflect/f;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/v;->f(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/j;

    move-result-object v2

    const/16 v3, 0xd

    aput-object v2, v1, v3

    .line 15
    new-instance v2, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    invoke-static {v0}, Lkotlin/jvm/internal/v;->b(Ljava/lang/Class;)Lkotlin/reflect/d;

    move-result-object v3

    const-string v4, "renderDefaultModality"

    const-string v5, "getRenderDefaultModality()Z"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Lkotlin/reflect/f;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/v;->f(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/j;

    move-result-object v2

    const/16 v3, 0xe

    aput-object v2, v1, v3

    .line 16
    new-instance v2, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    invoke-static {v0}, Lkotlin/jvm/internal/v;->b(Ljava/lang/Class;)Lkotlin/reflect/d;

    move-result-object v3

    const-string v4, "renderConstructorDelegation"

    const-string v5, "getRenderConstructorDelegation()Z"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Lkotlin/reflect/f;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/v;->f(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/j;

    move-result-object v2

    const/16 v3, 0xf

    aput-object v2, v1, v3

    .line 17
    new-instance v2, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    invoke-static {v0}, Lkotlin/jvm/internal/v;->b(Ljava/lang/Class;)Lkotlin/reflect/d;

    move-result-object v3

    const-string v4, "renderPrimaryConstructorParametersAsProperties"

    const-string v5, "getRenderPrimaryConstructorParametersAsProperties()Z"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Lkotlin/reflect/f;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/v;->f(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/j;

    move-result-object v2

    const/16 v3, 0x10

    aput-object v2, v1, v3

    .line 18
    new-instance v2, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    invoke-static {v0}, Lkotlin/jvm/internal/v;->b(Ljava/lang/Class;)Lkotlin/reflect/d;

    move-result-object v3

    const-string v4, "actualPropertiesInPrimaryConstructor"

    const-string v5, "getActualPropertiesInPrimaryConstructor()Z"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Lkotlin/reflect/f;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/v;->f(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/j;

    move-result-object v2

    const/16 v3, 0x11

    aput-object v2, v1, v3

    .line 19
    new-instance v2, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    invoke-static {v0}, Lkotlin/jvm/internal/v;->b(Ljava/lang/Class;)Lkotlin/reflect/d;

    move-result-object v3

    const-string v4, "uninferredTypeParameterAsName"

    const-string v5, "getUninferredTypeParameterAsName()Z"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Lkotlin/reflect/f;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/v;->f(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/j;

    move-result-object v2

    const/16 v3, 0x12

    aput-object v2, v1, v3

    .line 20
    new-instance v2, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    invoke-static {v0}, Lkotlin/jvm/internal/v;->b(Ljava/lang/Class;)Lkotlin/reflect/d;

    move-result-object v3

    const-string v4, "includePropertyConstant"

    const-string v5, "getIncludePropertyConstant()Z"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Lkotlin/reflect/f;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/v;->f(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/j;

    move-result-object v2

    const/16 v3, 0x13

    aput-object v2, v1, v3

    .line 21
    new-instance v2, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    invoke-static {v0}, Lkotlin/jvm/internal/v;->b(Ljava/lang/Class;)Lkotlin/reflect/d;

    move-result-object v3

    const-string v4, "withoutTypeParameters"

    const-string v5, "getWithoutTypeParameters()Z"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Lkotlin/reflect/f;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/v;->f(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/j;

    move-result-object v2

    const/16 v3, 0x14

    aput-object v2, v1, v3

    .line 22
    new-instance v2, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    invoke-static {v0}, Lkotlin/jvm/internal/v;->b(Ljava/lang/Class;)Lkotlin/reflect/d;

    move-result-object v3

    const-string v4, "withoutSuperTypes"

    const-string v5, "getWithoutSuperTypes()Z"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Lkotlin/reflect/f;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/v;->f(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/j;

    move-result-object v2

    const/16 v3, 0x15

    aput-object v2, v1, v3

    .line 23
    new-instance v2, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    invoke-static {v0}, Lkotlin/jvm/internal/v;->b(Ljava/lang/Class;)Lkotlin/reflect/d;

    move-result-object v3

    const-string v4, "typeNormalizer"

    const-string v5, "getTypeNormalizer()Lkotlin/jvm/functions/Function1;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Lkotlin/reflect/f;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/v;->f(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/j;

    move-result-object v2

    const/16 v3, 0x16

    aput-object v2, v1, v3

    .line 24
    new-instance v2, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    invoke-static {v0}, Lkotlin/jvm/internal/v;->b(Ljava/lang/Class;)Lkotlin/reflect/d;

    move-result-object v3

    const-string v4, "defaultParameterValueRenderer"

    const-string v5, "getDefaultParameterValueRenderer()Lkotlin/jvm/functions/Function1;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Lkotlin/reflect/f;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/v;->f(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/j;

    move-result-object v2

    const/16 v3, 0x17

    aput-object v2, v1, v3

    .line 25
    new-instance v2, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    invoke-static {v0}, Lkotlin/jvm/internal/v;->b(Ljava/lang/Class;)Lkotlin/reflect/d;

    move-result-object v3

    const-string v4, "secondaryConstructorsAsPrimary"

    const-string v5, "getSecondaryConstructorsAsPrimary()Z"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Lkotlin/reflect/f;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/v;->f(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/j;

    move-result-object v2

    const/16 v3, 0x18

    aput-object v2, v1, v3

    .line 26
    new-instance v2, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    invoke-static {v0}, Lkotlin/jvm/internal/v;->b(Ljava/lang/Class;)Lkotlin/reflect/d;

    move-result-object v3

    const-string v4, "overrideRenderingPolicy"

    const-string v5, "getOverrideRenderingPolicy()Lorg/jetbrains/kotlin/renderer/OverrideRenderingPolicy;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Lkotlin/reflect/f;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/v;->f(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/j;

    move-result-object v2

    const/16 v3, 0x19

    aput-object v2, v1, v3

    .line 27
    new-instance v2, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    invoke-static {v0}, Lkotlin/jvm/internal/v;->b(Ljava/lang/Class;)Lkotlin/reflect/d;

    move-result-object v3

    const-string v4, "valueParametersHandler"

    const-string v5, "getValueParametersHandler()Lorg/jetbrains/kotlin/renderer/DescriptorRenderer$ValueParametersHandler;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Lkotlin/reflect/f;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/v;->f(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/j;

    move-result-object v2

    const/16 v3, 0x1a

    aput-object v2, v1, v3

    .line 28
    new-instance v2, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    invoke-static {v0}, Lkotlin/jvm/internal/v;->b(Ljava/lang/Class;)Lkotlin/reflect/d;

    move-result-object v3

    const-string v4, "textFormat"

    const-string v5, "getTextFormat()Lorg/jetbrains/kotlin/renderer/RenderingFormat;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Lkotlin/reflect/f;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/v;->f(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/j;

    move-result-object v2

    const/16 v3, 0x1b

    aput-object v2, v1, v3

    .line 29
    new-instance v2, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    invoke-static {v0}, Lkotlin/jvm/internal/v;->b(Ljava/lang/Class;)Lkotlin/reflect/d;

    move-result-object v3

    const-string v4, "parameterNameRenderingPolicy"

    const-string v5, "getParameterNameRenderingPolicy()Lorg/jetbrains/kotlin/renderer/ParameterNameRenderingPolicy;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Lkotlin/reflect/f;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/v;->f(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/j;

    move-result-object v2

    const/16 v3, 0x1c

    aput-object v2, v1, v3

    .line 30
    new-instance v2, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    invoke-static {v0}, Lkotlin/jvm/internal/v;->b(Ljava/lang/Class;)Lkotlin/reflect/d;

    move-result-object v3

    const-string v4, "receiverAfterName"

    const-string v5, "getReceiverAfterName()Z"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Lkotlin/reflect/f;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/v;->f(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/j;

    move-result-object v2

    const/16 v3, 0x1d

    aput-object v2, v1, v3

    .line 31
    new-instance v2, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    invoke-static {v0}, Lkotlin/jvm/internal/v;->b(Ljava/lang/Class;)Lkotlin/reflect/d;

    move-result-object v3

    const-string v4, "renderCompanionObjectName"

    const-string v5, "getRenderCompanionObjectName()Z"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Lkotlin/reflect/f;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/v;->f(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/j;

    move-result-object v2

    const/16 v3, 0x1e

    aput-object v2, v1, v3

    .line 32
    new-instance v2, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    invoke-static {v0}, Lkotlin/jvm/internal/v;->b(Ljava/lang/Class;)Lkotlin/reflect/d;

    move-result-object v3

    const-string v4, "propertyAccessorRenderingPolicy"

    const-string v5, "getPropertyAccessorRenderingPolicy()Lorg/jetbrains/kotlin/renderer/PropertyAccessorRenderingPolicy;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Lkotlin/reflect/f;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/v;->f(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/j;

    move-result-object v2

    const/16 v3, 0x1f

    aput-object v2, v1, v3

    .line 33
    new-instance v2, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    invoke-static {v0}, Lkotlin/jvm/internal/v;->b(Ljava/lang/Class;)Lkotlin/reflect/d;

    move-result-object v3

    const-string v4, "renderDefaultAnnotationArguments"

    const-string v5, "getRenderDefaultAnnotationArguments()Z"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Lkotlin/reflect/f;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/v;->f(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/j;

    move-result-object v2

    const/16 v3, 0x20

    aput-object v2, v1, v3

    .line 34
    new-instance v2, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    invoke-static {v0}, Lkotlin/jvm/internal/v;->b(Ljava/lang/Class;)Lkotlin/reflect/d;

    move-result-object v3

    const-string v4, "eachAnnotationOnNewLine"

    const-string v5, "getEachAnnotationOnNewLine()Z"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Lkotlin/reflect/f;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/v;->f(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/j;

    move-result-object v2

    const/16 v3, 0x21

    aput-object v2, v1, v3

    .line 35
    new-instance v2, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    invoke-static {v0}, Lkotlin/jvm/internal/v;->b(Ljava/lang/Class;)Lkotlin/reflect/d;

    move-result-object v3

    const-string v4, "excludedAnnotationClasses"

    const-string v5, "getExcludedAnnotationClasses()Ljava/util/Set;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Lkotlin/reflect/f;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/v;->f(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/j;

    move-result-object v2

    const/16 v3, 0x22

    aput-object v2, v1, v3

    .line 36
    new-instance v2, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    invoke-static {v0}, Lkotlin/jvm/internal/v;->b(Ljava/lang/Class;)Lkotlin/reflect/d;

    move-result-object v3

    const-string v4, "excludedTypeAnnotationClasses"

    const-string v5, "getExcludedTypeAnnotationClasses()Ljava/util/Set;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Lkotlin/reflect/f;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/v;->f(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/j;

    move-result-object v2

    const/16 v3, 0x23

    aput-object v2, v1, v3

    .line 37
    new-instance v2, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    invoke-static {v0}, Lkotlin/jvm/internal/v;->b(Ljava/lang/Class;)Lkotlin/reflect/d;

    move-result-object v3

    const-string v4, "annotationFilter"

    const-string v5, "getAnnotationFilter()Lkotlin/jvm/functions/Function1;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Lkotlin/reflect/f;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/v;->f(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/j;

    move-result-object v2

    const/16 v3, 0x24

    aput-object v2, v1, v3

    .line 38
    new-instance v2, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    invoke-static {v0}, Lkotlin/jvm/internal/v;->b(Ljava/lang/Class;)Lkotlin/reflect/d;

    move-result-object v3

    const-string v4, "annotationArgumentsRenderingPolicy"

    const-string v5, "getAnnotationArgumentsRenderingPolicy()Lorg/jetbrains/kotlin/renderer/AnnotationArgumentsRenderingPolicy;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Lkotlin/reflect/f;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/v;->f(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/j;

    move-result-object v2

    const/16 v3, 0x25

    aput-object v2, v1, v3

    .line 39
    new-instance v2, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    invoke-static {v0}, Lkotlin/jvm/internal/v;->b(Ljava/lang/Class;)Lkotlin/reflect/d;

    move-result-object v3

    const-string v4, "alwaysRenderModifiers"

    const-string v5, "getAlwaysRenderModifiers()Z"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Lkotlin/reflect/f;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/v;->f(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/j;

    move-result-object v2

    const/16 v3, 0x26

    aput-object v2, v1, v3

    .line 40
    new-instance v2, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    invoke-static {v0}, Lkotlin/jvm/internal/v;->b(Ljava/lang/Class;)Lkotlin/reflect/d;

    move-result-object v3

    const-string v4, "renderConstructorKeyword"

    const-string v5, "getRenderConstructorKeyword()Z"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Lkotlin/reflect/f;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/v;->f(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/j;

    move-result-object v2

    const/16 v3, 0x27

    aput-object v2, v1, v3

    .line 41
    new-instance v2, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    invoke-static {v0}, Lkotlin/jvm/internal/v;->b(Ljava/lang/Class;)Lkotlin/reflect/d;

    move-result-object v3

    const-string v4, "renderUnabbreviatedType"

    const-string v5, "getRenderUnabbreviatedType()Z"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Lkotlin/reflect/f;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/v;->f(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/j;

    move-result-object v2

    const/16 v3, 0x28

    aput-object v2, v1, v3

    .line 42
    new-instance v2, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    invoke-static {v0}, Lkotlin/jvm/internal/v;->b(Ljava/lang/Class;)Lkotlin/reflect/d;

    move-result-object v3

    const-string v4, "renderTypeExpansions"

    const-string v5, "getRenderTypeExpansions()Z"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Lkotlin/reflect/f;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/v;->f(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/j;

    move-result-object v2

    const/16 v3, 0x29

    aput-object v2, v1, v3

    .line 43
    new-instance v2, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    invoke-static {v0}, Lkotlin/jvm/internal/v;->b(Ljava/lang/Class;)Lkotlin/reflect/d;

    move-result-object v3

    const-string v4, "includeAdditionalModifiers"

    const-string v5, "getIncludeAdditionalModifiers()Z"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Lkotlin/reflect/f;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/v;->f(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/j;

    move-result-object v2

    const/16 v3, 0x2a

    aput-object v2, v1, v3

    .line 44
    new-instance v2, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    invoke-static {v0}, Lkotlin/jvm/internal/v;->b(Ljava/lang/Class;)Lkotlin/reflect/d;

    move-result-object v3

    const-string v4, "parameterNamesInFunctionalTypes"

    const-string v5, "getParameterNamesInFunctionalTypes()Z"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Lkotlin/reflect/f;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/v;->f(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/j;

    move-result-object v2

    const/16 v3, 0x2b

    aput-object v2, v1, v3

    .line 45
    new-instance v2, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    invoke-static {v0}, Lkotlin/jvm/internal/v;->b(Ljava/lang/Class;)Lkotlin/reflect/d;

    move-result-object v3

    const-string v4, "renderFunctionContracts"

    const-string v5, "getRenderFunctionContracts()Z"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Lkotlin/reflect/f;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/v;->f(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/j;

    move-result-object v2

    const/16 v3, 0x2c

    aput-object v2, v1, v3

    .line 46
    new-instance v2, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    invoke-static {v0}, Lkotlin/jvm/internal/v;->b(Ljava/lang/Class;)Lkotlin/reflect/d;

    move-result-object v3

    const-string v4, "presentableUnresolvedTypes"

    const-string v5, "getPresentableUnresolvedTypes()Z"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Lkotlin/reflect/f;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/v;->f(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/j;

    move-result-object v2

    const/16 v3, 0x2d

    aput-object v2, v1, v3

    .line 47
    new-instance v2, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    invoke-static {v0}, Lkotlin/jvm/internal/v;->b(Ljava/lang/Class;)Lkotlin/reflect/d;

    move-result-object v3

    const-string v4, "boldOnlyForNamesInHtml"

    const-string v5, "getBoldOnlyForNamesInHtml()Z"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Lkotlin/reflect/f;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/v;->f(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/j;

    move-result-object v2

    const/16 v3, 0x2e

    aput-object v2, v1, v3

    .line 48
    new-instance v2, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    invoke-static {v0}, Lkotlin/jvm/internal/v;->b(Ljava/lang/Class;)Lkotlin/reflect/d;

    move-result-object v0

    const-string v3, "informativeErrorType"

    const-string v4, "getInformativeErrorType()Z"

    invoke-direct {v2, v0, v3, v4}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Lkotlin/reflect/f;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/v;->f(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/j;

    move-result-object v0

    const/16 v2, 0x2f

    aput-object v0, v1, v2

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->X:[Lkotlin/reflect/l;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/renderer/a$c;->a:Lkotlin/reflect/jvm/internal/impl/renderer/a$c;

    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->m0(Ljava/lang/Object;)Lkotlin/z/c;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->b:Lkotlin/z/c;

    .line 3
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->m0(Ljava/lang/Object;)Lkotlin/z/c;

    move-result-object v1

    iput-object v1, p0, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->c:Lkotlin/z/c;

    .line 4
    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->m0(Ljava/lang/Object;)Lkotlin/z/c;

    move-result-object v1

    iput-object v1, p0, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->d:Lkotlin/z/c;

    .line 5
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererModifier;->ALL_EXCEPT_ANNOTATIONS:Ljava/util/Set;

    invoke-direct {p0, v1}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->m0(Ljava/lang/Object;)Lkotlin/z/c;

    move-result-object v1

    iput-object v1, p0, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->e:Lkotlin/z/c;

    .line 6
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p0, v1}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->m0(Ljava/lang/Object;)Lkotlin/z/c;

    move-result-object v2

    iput-object v2, p0, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->f:Lkotlin/z/c;

    .line 7
    invoke-direct {p0, v1}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->m0(Ljava/lang/Object;)Lkotlin/z/c;

    move-result-object v2

    iput-object v2, p0, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->g:Lkotlin/z/c;

    .line 8
    invoke-direct {p0, v1}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->m0(Ljava/lang/Object;)Lkotlin/z/c;

    move-result-object v2

    iput-object v2, p0, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->h:Lkotlin/z/c;

    .line 9
    invoke-direct {p0, v1}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->m0(Ljava/lang/Object;)Lkotlin/z/c;

    move-result-object v2

    iput-object v2, p0, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->i:Lkotlin/z/c;

    .line 10
    invoke-direct {p0, v1}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->m0(Ljava/lang/Object;)Lkotlin/z/c;

    move-result-object v2

    iput-object v2, p0, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->j:Lkotlin/z/c;

    .line 11
    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->m0(Ljava/lang/Object;)Lkotlin/z/c;

    move-result-object v2

    iput-object v2, p0, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->k:Lkotlin/z/c;

    .line 12
    invoke-direct {p0, v1}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->m0(Ljava/lang/Object;)Lkotlin/z/c;

    move-result-object v2

    iput-object v2, p0, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->l:Lkotlin/z/c;

    .line 13
    invoke-direct {p0, v1}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->m0(Ljava/lang/Object;)Lkotlin/z/c;

    move-result-object v2

    iput-object v2, p0, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->m:Lkotlin/z/c;

    .line 14
    invoke-direct {p0, v1}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->m0(Ljava/lang/Object;)Lkotlin/z/c;

    move-result-object v2

    iput-object v2, p0, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->n:Lkotlin/z/c;

    .line 15
    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->m0(Ljava/lang/Object;)Lkotlin/z/c;

    move-result-object v2

    iput-object v2, p0, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->o:Lkotlin/z/c;

    .line 16
    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->m0(Ljava/lang/Object;)Lkotlin/z/c;

    move-result-object v2

    iput-object v2, p0, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->p:Lkotlin/z/c;

    .line 17
    invoke-direct {p0, v1}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->m0(Ljava/lang/Object;)Lkotlin/z/c;

    move-result-object v2

    iput-object v2, p0, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->q:Lkotlin/z/c;

    .line 18
    invoke-direct {p0, v1}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->m0(Ljava/lang/Object;)Lkotlin/z/c;

    move-result-object v2

    iput-object v2, p0, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->r:Lkotlin/z/c;

    .line 19
    invoke-direct {p0, v1}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->m0(Ljava/lang/Object;)Lkotlin/z/c;

    move-result-object v2

    iput-object v2, p0, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->s:Lkotlin/z/c;

    .line 20
    invoke-direct {p0, v1}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->m0(Ljava/lang/Object;)Lkotlin/z/c;

    move-result-object v2

    iput-object v2, p0, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->t:Lkotlin/z/c;

    .line 21
    invoke-direct {p0, v1}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->m0(Ljava/lang/Object;)Lkotlin/z/c;

    move-result-object v2

    iput-object v2, p0, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->u:Lkotlin/z/c;

    .line 22
    invoke-direct {p0, v1}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->m0(Ljava/lang/Object;)Lkotlin/z/c;

    move-result-object v2

    iput-object v2, p0, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->v:Lkotlin/z/c;

    .line 23
    invoke-direct {p0, v1}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->m0(Ljava/lang/Object;)Lkotlin/z/c;

    move-result-object v2

    iput-object v2, p0, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->w:Lkotlin/z/c;

    .line 24
    sget-object v2, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl$typeNormalizer$2;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl$typeNormalizer$2;

    invoke-direct {p0, v2}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->m0(Ljava/lang/Object;)Lkotlin/z/c;

    move-result-object v2

    iput-object v2, p0, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->x:Lkotlin/z/c;

    .line 25
    sget-object v2, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl$defaultParameterValueRenderer$2;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl$defaultParameterValueRenderer$2;

    invoke-direct {p0, v2}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->m0(Ljava/lang/Object;)Lkotlin/z/c;

    move-result-object v2

    iput-object v2, p0, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->y:Lkotlin/z/c;

    .line 26
    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->m0(Ljava/lang/Object;)Lkotlin/z/c;

    move-result-object v2

    iput-object v2, p0, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->z:Lkotlin/z/c;

    .line 27
    sget-object v2, Lkotlin/reflect/jvm/internal/impl/renderer/OverrideRenderingPolicy;->RENDER_OPEN:Lkotlin/reflect/jvm/internal/impl/renderer/OverrideRenderingPolicy;

    invoke-direct {p0, v2}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->m0(Ljava/lang/Object;)Lkotlin/z/c;

    move-result-object v2

    iput-object v2, p0, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->A:Lkotlin/z/c;

    .line 28
    sget-object v2, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRenderer$b$a;->a:Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRenderer$b$a;

    invoke-direct {p0, v2}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->m0(Ljava/lang/Object;)Lkotlin/z/c;

    move-result-object v2

    iput-object v2, p0, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->B:Lkotlin/z/c;

    .line 29
    sget-object v2, Lkotlin/reflect/jvm/internal/impl/renderer/RenderingFormat;->PLAIN:Lkotlin/reflect/jvm/internal/impl/renderer/RenderingFormat;

    invoke-direct {p0, v2}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->m0(Ljava/lang/Object;)Lkotlin/z/c;

    move-result-object v2

    iput-object v2, p0, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->C:Lkotlin/z/c;

    .line 30
    sget-object v2, Lkotlin/reflect/jvm/internal/impl/renderer/ParameterNameRenderingPolicy;->ALL:Lkotlin/reflect/jvm/internal/impl/renderer/ParameterNameRenderingPolicy;

    invoke-direct {p0, v2}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->m0(Ljava/lang/Object;)Lkotlin/z/c;

    move-result-object v2

    iput-object v2, p0, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->D:Lkotlin/z/c;

    .line 31
    invoke-direct {p0, v1}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->m0(Ljava/lang/Object;)Lkotlin/z/c;

    move-result-object v2

    iput-object v2, p0, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->E:Lkotlin/z/c;

    .line 32
    invoke-direct {p0, v1}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->m0(Ljava/lang/Object;)Lkotlin/z/c;

    move-result-object v2

    iput-object v2, p0, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->F:Lkotlin/z/c;

    .line 33
    sget-object v2, Lkotlin/reflect/jvm/internal/impl/renderer/PropertyAccessorRenderingPolicy;->DEBUG:Lkotlin/reflect/jvm/internal/impl/renderer/PropertyAccessorRenderingPolicy;

    invoke-direct {p0, v2}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->m0(Ljava/lang/Object;)Lkotlin/z/c;

    move-result-object v2

    iput-object v2, p0, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->G:Lkotlin/z/c;

    .line 34
    invoke-direct {p0, v1}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->m0(Ljava/lang/Object;)Lkotlin/z/c;

    move-result-object v2

    iput-object v2, p0, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->H:Lkotlin/z/c;

    .line 35
    invoke-direct {p0, v1}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->m0(Ljava/lang/Object;)Lkotlin/z/c;

    move-result-object v2

    iput-object v2, p0, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->I:Lkotlin/z/c;

    .line 36
    invoke-static {}, Lkotlin/collections/s0;->b()Ljava/util/Set;

    move-result-object v2

    invoke-direct {p0, v2}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->m0(Ljava/lang/Object;)Lkotlin/z/c;

    move-result-object v2

    iput-object v2, p0, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->J:Lkotlin/z/c;

    .line 37
    sget-object v2, Lkotlin/reflect/jvm/internal/impl/renderer/c;->a:Lkotlin/reflect/jvm/internal/impl/renderer/c;

    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/renderer/c;->a()Ljava/util/Set;

    move-result-object v2

    invoke-direct {p0, v2}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->m0(Ljava/lang/Object;)Lkotlin/z/c;

    move-result-object v2

    iput-object v2, p0, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->K:Lkotlin/z/c;

    const/4 v2, 0x0

    .line 38
    invoke-direct {p0, v2}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->m0(Ljava/lang/Object;)Lkotlin/z/c;

    move-result-object v2

    iput-object v2, p0, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->L:Lkotlin/z/c;

    .line 39
    sget-object v2, Lkotlin/reflect/jvm/internal/impl/renderer/AnnotationArgumentsRenderingPolicy;->NO_ARGUMENTS:Lkotlin/reflect/jvm/internal/impl/renderer/AnnotationArgumentsRenderingPolicy;

    invoke-direct {p0, v2}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->m0(Ljava/lang/Object;)Lkotlin/z/c;

    move-result-object v2

    iput-object v2, p0, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->M:Lkotlin/z/c;

    .line 40
    invoke-direct {p0, v1}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->m0(Ljava/lang/Object;)Lkotlin/z/c;

    move-result-object v2

    iput-object v2, p0, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->N:Lkotlin/z/c;

    .line 41
    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->m0(Ljava/lang/Object;)Lkotlin/z/c;

    move-result-object v2

    iput-object v2, p0, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->O:Lkotlin/z/c;

    .line 42
    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->m0(Ljava/lang/Object;)Lkotlin/z/c;

    move-result-object v2

    iput-object v2, p0, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->P:Lkotlin/z/c;

    .line 43
    invoke-direct {p0, v1}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->m0(Ljava/lang/Object;)Lkotlin/z/c;

    move-result-object v2

    iput-object v2, p0, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->Q:Lkotlin/z/c;

    .line 44
    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->m0(Ljava/lang/Object;)Lkotlin/z/c;

    move-result-object v2

    iput-object v2, p0, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->R:Lkotlin/z/c;

    .line 45
    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->m0(Ljava/lang/Object;)Lkotlin/z/c;

    move-result-object v2

    iput-object v2, p0, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->S:Lkotlin/z/c;

    .line 46
    invoke-direct {p0, v1}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->m0(Ljava/lang/Object;)Lkotlin/z/c;

    move-result-object v2

    iput-object v2, p0, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->T:Lkotlin/z/c;

    .line 47
    invoke-direct {p0, v1}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->m0(Ljava/lang/Object;)Lkotlin/z/c;

    move-result-object v2

    iput-object v2, p0, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->U:Lkotlin/z/c;

    .line 48
    invoke-direct {p0, v1}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->m0(Ljava/lang/Object;)Lkotlin/z/c;

    move-result-object v1

    iput-object v1, p0, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->V:Lkotlin/z/c;

    .line 49
    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->m0(Ljava/lang/Object;)Lkotlin/z/c;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->W:Lkotlin/z/c;

    return-void
.end method

.method private final m0(Ljava/lang/Object;)Lkotlin/z/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lkotlin/z/c<",
            "Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;",
            "TT;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lkotlin/z/a;->a:Lkotlin/z/a;

    .line 2
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl$a;

    invoke-direct {v0, p1, p1, p0}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl$a;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;)V

    return-object v0
.end method


# virtual methods
.method public A()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->R:Lkotlin/z/c;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->X:[Lkotlin/reflect/l;

    const/16 v2, 0x2a

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/z/c;->b(Ljava/lang/Object;Lkotlin/reflect/l;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public B()Z
    .locals 1

    .line 1
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/renderer/b$a;->a(Lkotlin/reflect/jvm/internal/impl/renderer/b;)Z

    move-result v0

    return v0
.end method

.method public C()Z
    .locals 1

    .line 1
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/renderer/b$a;->b(Lkotlin/reflect/jvm/internal/impl/renderer/b;)Z

    move-result v0

    return v0
.end method

.method public D()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->u:Lkotlin/z/c;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->X:[Lkotlin/reflect/l;

    const/16 v2, 0x13

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/z/c;->b(Ljava/lang/Object;Lkotlin/reflect/l;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public E()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->W:Lkotlin/z/c;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->X:[Lkotlin/reflect/l;

    const/16 v2, 0x2f

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/z/c;->b(Ljava/lang/Object;Lkotlin/reflect/l;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public F()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererModifier;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->e:Lkotlin/z/c;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->X:[Lkotlin/reflect/l;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/z/c;->b(Ljava/lang/Object;Lkotlin/reflect/l;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public G()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->n:Lkotlin/z/c;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->X:[Lkotlin/reflect/l;

    const/16 v2, 0xc

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/z/c;->b(Ljava/lang/Object;Lkotlin/reflect/l;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public H()Lkotlin/reflect/jvm/internal/impl/renderer/OverrideRenderingPolicy;
    .locals 3

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->A:Lkotlin/z/c;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->X:[Lkotlin/reflect/l;

    const/16 v2, 0x19

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/z/c;->b(Ljava/lang/Object;Lkotlin/reflect/l;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/renderer/OverrideRenderingPolicy;

    return-object v0
.end method

.method public I()Lkotlin/reflect/jvm/internal/impl/renderer/ParameterNameRenderingPolicy;
    .locals 3

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->D:Lkotlin/z/c;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->X:[Lkotlin/reflect/l;

    const/16 v2, 0x1c

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/z/c;->b(Ljava/lang/Object;Lkotlin/reflect/l;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/renderer/ParameterNameRenderingPolicy;

    return-object v0
.end method

.method public J()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->S:Lkotlin/z/c;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->X:[Lkotlin/reflect/l;

    const/16 v2, 0x2b

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/z/c;->b(Ljava/lang/Object;Lkotlin/reflect/l;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public K()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->U:Lkotlin/z/c;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->X:[Lkotlin/reflect/l;

    const/16 v2, 0x2d

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/z/c;->b(Ljava/lang/Object;Lkotlin/reflect/l;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public L()Lkotlin/reflect/jvm/internal/impl/renderer/PropertyAccessorRenderingPolicy;
    .locals 3

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->G:Lkotlin/z/c;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->X:[Lkotlin/reflect/l;

    const/16 v2, 0x1f

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/z/c;->b(Ljava/lang/Object;Lkotlin/reflect/l;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/renderer/PropertyAccessorRenderingPolicy;

    return-object v0
.end method

.method public M()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->E:Lkotlin/z/c;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->X:[Lkotlin/reflect/l;

    const/16 v2, 0x1d

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/z/c;->b(Ljava/lang/Object;Lkotlin/reflect/l;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public N()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->F:Lkotlin/z/c;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->X:[Lkotlin/reflect/l;

    const/16 v2, 0x1e

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/z/c;->b(Ljava/lang/Object;Lkotlin/reflect/l;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public O()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->q:Lkotlin/z/c;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->X:[Lkotlin/reflect/l;

    const/16 v2, 0xf

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/z/c;->b(Ljava/lang/Object;Lkotlin/reflect/l;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public P()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->O:Lkotlin/z/c;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->X:[Lkotlin/reflect/l;

    const/16 v2, 0x27

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/z/c;->b(Ljava/lang/Object;Lkotlin/reflect/l;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public Q()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->H:Lkotlin/z/c;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->X:[Lkotlin/reflect/l;

    const/16 v2, 0x20

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/z/c;->b(Ljava/lang/Object;Lkotlin/reflect/l;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public R()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->p:Lkotlin/z/c;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->X:[Lkotlin/reflect/l;

    const/16 v2, 0xe

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/z/c;->b(Ljava/lang/Object;Lkotlin/reflect/l;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public S()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->o:Lkotlin/z/c;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->X:[Lkotlin/reflect/l;

    const/16 v2, 0xd

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/z/c;->b(Ljava/lang/Object;Lkotlin/reflect/l;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public T()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->r:Lkotlin/z/c;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->X:[Lkotlin/reflect/l;

    const/16 v2, 0x10

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/z/c;->b(Ljava/lang/Object;Lkotlin/reflect/l;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public U()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->Q:Lkotlin/z/c;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->X:[Lkotlin/reflect/l;

    const/16 v2, 0x29

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/z/c;->b(Ljava/lang/Object;Lkotlin/reflect/l;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public V()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->P:Lkotlin/z/c;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->X:[Lkotlin/reflect/l;

    const/16 v2, 0x28

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/z/c;->b(Ljava/lang/Object;Lkotlin/reflect/l;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public W()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->z:Lkotlin/z/c;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->X:[Lkotlin/reflect/l;

    const/16 v2, 0x18

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/z/c;->b(Ljava/lang/Object;Lkotlin/reflect/l;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public X()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->g:Lkotlin/z/c;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->X:[Lkotlin/reflect/l;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/z/c;->b(Ljava/lang/Object;Lkotlin/reflect/l;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public Y()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->f:Lkotlin/z/c;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->X:[Lkotlin/reflect/l;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/z/c;->b(Ljava/lang/Object;Lkotlin/reflect/l;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public Z()Lkotlin/reflect/jvm/internal/impl/renderer/RenderingFormat;
    .locals 3

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->C:Lkotlin/z/c;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->X:[Lkotlin/reflect/l;

    const/16 v2, 0x1b

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/z/c;->b(Ljava/lang/Object;Lkotlin/reflect/l;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/renderer/RenderingFormat;

    return-object v0
.end method

.method public a(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->f:Lkotlin/z/c;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->X:[Lkotlin/reflect/l;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, p0, v1, p1}, Lkotlin/z/c;->a(Ljava/lang/Object;Lkotlin/reflect/l;Ljava/lang/Object;)V

    return-void
.end method

.method public a0()Lkotlin/jvm/b/l;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/b/l<",
            "Lkotlin/reflect/jvm/internal/impl/types/a0;",
            "Lkotlin/reflect/jvm/internal/impl/types/a0;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->x:Lkotlin/z/c;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->X:[Lkotlin/reflect/l;

    const/16 v2, 0x16

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/z/c;->b(Ljava/lang/Object;Lkotlin/reflect/l;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/b/l;

    return-object v0
.end method

.method public b(Lkotlin/reflect/jvm/internal/impl/renderer/ParameterNameRenderingPolicy;)V
    .locals 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->D:Lkotlin/z/c;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->X:[Lkotlin/reflect/l;

    const/16 v2, 0x1c

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1, p1}, Lkotlin/z/c;->a(Ljava/lang/Object;Lkotlin/reflect/l;Ljava/lang/Object;)V

    return-void
.end method

.method public b0()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->t:Lkotlin/z/c;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->X:[Lkotlin/reflect/l;

    const/16 v2, 0x12

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/z/c;->b(Ljava/lang/Object;Lkotlin/reflect/l;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public c(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->c:Lkotlin/z/c;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->X:[Lkotlin/reflect/l;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, p0, v1, p1}, Lkotlin/z/c;->a(Ljava/lang/Object;Lkotlin/reflect/l;Ljava/lang/Object;)V

    return-void
.end method

.method public c0()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->k:Lkotlin/z/c;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->X:[Lkotlin/reflect/l;

    const/16 v2, 0x9

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/z/c;->b(Ljava/lang/Object;Lkotlin/reflect/l;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public d()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->m:Lkotlin/z/c;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->X:[Lkotlin/reflect/l;

    const/16 v2, 0xb

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/z/c;->b(Ljava/lang/Object;Lkotlin/reflect/l;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public d0()Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRenderer$b;
    .locals 3

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->B:Lkotlin/z/c;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->X:[Lkotlin/reflect/l;

    const/16 v2, 0x1a

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/z/c;->b(Ljava/lang/Object;Lkotlin/reflect/l;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRenderer$b;

    return-object v0
.end method

.method public e(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->w:Lkotlin/z/c;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->X:[Lkotlin/reflect/l;

    const/16 v2, 0x15

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, p0, v1, p1}, Lkotlin/z/c;->a(Ljava/lang/Object;Lkotlin/reflect/l;Ljava/lang/Object;)V

    return-void
.end method

.method public e0()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->j:Lkotlin/z/c;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->X:[Lkotlin/reflect/l;

    const/16 v2, 0x8

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/z/c;->b(Ljava/lang/Object;Lkotlin/reflect/l;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public f(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->E:Lkotlin/z/c;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->X:[Lkotlin/reflect/l;

    const/16 v2, 0x1d

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, p0, v1, p1}, Lkotlin/z/c;->a(Ljava/lang/Object;Lkotlin/reflect/l;Ljava/lang/Object;)V

    return-void
.end method

.method public f0()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->c:Lkotlin/z/c;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->X:[Lkotlin/reflect/l;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/z/c;->b(Ljava/lang/Object;Lkotlin/reflect/l;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public g(Lkotlin/reflect/jvm/internal/impl/renderer/RenderingFormat;)V
    .locals 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->C:Lkotlin/z/c;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->X:[Lkotlin/reflect/l;

    const/16 v2, 0x1b

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1, p1}, Lkotlin/z/c;->a(Ljava/lang/Object;Lkotlin/reflect/l;Ljava/lang/Object;)V

    return-void
.end method

.method public g0()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->d:Lkotlin/z/c;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->X:[Lkotlin/reflect/l;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/z/c;->b(Ljava/lang/Object;Lkotlin/reflect/l;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public h()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lkotlin/reflect/jvm/internal/impl/name/c;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->K:Lkotlin/z/c;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->X:[Lkotlin/reflect/l;

    const/16 v2, 0x23

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/z/c;->b(Ljava/lang/Object;Lkotlin/reflect/l;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public h0()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->l:Lkotlin/z/c;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->X:[Lkotlin/reflect/l;

    const/16 v2, 0xa

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/z/c;->b(Ljava/lang/Object;Lkotlin/reflect/l;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public i()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->h:Lkotlin/z/c;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->X:[Lkotlin/reflect/l;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/z/c;->b(Ljava/lang/Object;Lkotlin/reflect/l;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public i0()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->w:Lkotlin/z/c;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->X:[Lkotlin/reflect/l;

    const/16 v2, 0x15

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/z/c;->b(Ljava/lang/Object;Lkotlin/reflect/l;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public j()Lkotlin/reflect/jvm/internal/impl/renderer/AnnotationArgumentsRenderingPolicy;
    .locals 3

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->M:Lkotlin/z/c;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->X:[Lkotlin/reflect/l;

    const/16 v2, 0x25

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/z/c;->b(Ljava/lang/Object;Lkotlin/reflect/l;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/renderer/AnnotationArgumentsRenderingPolicy;

    return-object v0
.end method

.method public j0()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->v:Lkotlin/z/c;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->X:[Lkotlin/reflect/l;

    const/16 v2, 0x14

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/z/c;->b(Ljava/lang/Object;Lkotlin/reflect/l;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public k(Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lkotlin/reflect/jvm/internal/impl/name/c;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->K:Lkotlin/z/c;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->X:[Lkotlin/reflect/l;

    const/16 v2, 0x23

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1, p1}, Lkotlin/z/c;->a(Ljava/lang/Object;Lkotlin/reflect/l;Ljava/lang/Object;)V

    return-void
.end method

.method public final k0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->a:Z

    return v0
.end method

.method public l(Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererModifier;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->e:Lkotlin/z/c;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->X:[Lkotlin/reflect/l;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1, p1}, Lkotlin/z/c;->a(Ljava/lang/Object;Lkotlin/reflect/l;Ljava/lang/Object;)V

    return-void
.end method

.method public final l0()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->a:Z

    return-void
.end method

.method public m(Lkotlin/reflect/jvm/internal/impl/renderer/a;)V
    .locals 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->b:Lkotlin/z/c;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->X:[Lkotlin/reflect/l;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1, p1}, Lkotlin/z/c;->a(Ljava/lang/Object;Lkotlin/reflect/l;Ljava/lang/Object;)V

    return-void
.end method

.method public n(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->h:Lkotlin/z/c;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->X:[Lkotlin/reflect/l;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, p0, v1, p1}, Lkotlin/z/c;->a(Ljava/lang/Object;Lkotlin/reflect/l;Ljava/lang/Object;)V

    return-void
.end method

.method public o(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->F:Lkotlin/z/c;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->X:[Lkotlin/reflect/l;

    const/16 v2, 0x1e

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, p0, v1, p1}, Lkotlin/z/c;->a(Ljava/lang/Object;Lkotlin/reflect/l;Ljava/lang/Object;)V

    return-void
.end method

.method public p(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->v:Lkotlin/z/c;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->X:[Lkotlin/reflect/l;

    const/16 v2, 0x14

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, p0, v1, p1}, Lkotlin/z/c;->a(Ljava/lang/Object;Lkotlin/reflect/l;Ljava/lang/Object;)V

    return-void
.end method

.method public final q()Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;
    .locals 14

    .line 1
    const-class v0, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;

    new-instance v1, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;

    invoke-direct {v1}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;-><init>()V

    .line 2
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    const-string v3, "this::class.java.declaredFields"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_5

    aget-object v6, v2, v5

    add-int/lit8 v5, v5, 0x1

    .line 3
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v7

    and-int/lit8 v7, v7, 0x8

    if-eqz v7, :cond_0

    goto :goto_0

    :cond_0
    const/4 v7, 0x1

    .line 4
    invoke-virtual {v6, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 5
    invoke-virtual {v6, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    instance-of v9, v8, Lkotlin/z/b;

    const/4 v10, 0x0

    if-eqz v9, :cond_1

    check-cast v8, Lkotlin/z/b;

    goto :goto_1

    :cond_1
    move-object v8, v10

    :goto_1
    if-nez v8, :cond_2

    goto :goto_0

    .line 6
    :cond_2
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v11, "field.name"

    invoke-static {v9, v11}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v12, 0x2

    const-string v13, "is"

    invoke-static {v9, v13, v4, v12, v10}, Lkotlin/text/l;->B(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 7
    invoke-static {v0}, Lkotlin/jvm/internal/v;->b(Ljava/lang/Class;)Lkotlin/reflect/d;

    move-result-object v9

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v11}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v12}, Ljava/lang/CharSequence;->length()I

    move-result v11

    if-lez v11, :cond_3

    const/4 v11, 0x1

    goto :goto_2

    :cond_3
    const/4 v11, 0x0

    :goto_2
    if-eqz v11, :cond_4

    invoke-virtual {v12, v4}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-static {v11}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v11

    invoke-virtual {v12, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    const-string v12, "(this as java.lang.String).substring(startIndex)"

    invoke-static {v7, v12}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v11}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    :cond_4
    const-string v7, "get"

    invoke-static {v7, v12}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    new-instance v11, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-direct {v11, v9, v10, v7}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/f;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-virtual {v8, p0, v11}, Lkotlin/z/b;->b(Ljava/lang/Object;Lkotlin/reflect/l;)Ljava/lang/Object;

    move-result-object v7

    .line 9
    invoke-direct {v1, v7}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->m0(Ljava/lang/Object;)Lkotlin/z/c;

    move-result-object v7

    invoke-virtual {v6, v1, v7}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_5
    return-object v1
.end method

.method public r()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->s:Lkotlin/z/c;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->X:[Lkotlin/reflect/l;

    const/16 v2, 0x11

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/z/c;->b(Ljava/lang/Object;Lkotlin/reflect/l;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public s()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->N:Lkotlin/z/c;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->X:[Lkotlin/reflect/l;

    const/16 v2, 0x26

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/z/c;->b(Ljava/lang/Object;Lkotlin/reflect/l;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public t()Lkotlin/jvm/b/l;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/b/l<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/c;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->L:Lkotlin/z/c;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->X:[Lkotlin/reflect/l;

    const/16 v2, 0x24

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/z/c;->b(Ljava/lang/Object;Lkotlin/reflect/l;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/b/l;

    return-object v0
.end method

.method public u()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->V:Lkotlin/z/c;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->X:[Lkotlin/reflect/l;

    const/16 v2, 0x2e

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/z/c;->b(Ljava/lang/Object;Lkotlin/reflect/l;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public v()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->i:Lkotlin/z/c;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->X:[Lkotlin/reflect/l;

    const/4 v2, 0x7

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/z/c;->b(Ljava/lang/Object;Lkotlin/reflect/l;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public w()Lkotlin/reflect/jvm/internal/impl/renderer/a;
    .locals 3

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->b:Lkotlin/z/c;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->X:[Lkotlin/reflect/l;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/z/c;->b(Ljava/lang/Object;Lkotlin/reflect/l;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/renderer/a;

    return-object v0
.end method

.method public x()Lkotlin/jvm/b/l;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/b/l<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/v0;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->y:Lkotlin/z/c;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->X:[Lkotlin/reflect/l;

    const/16 v2, 0x17

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/z/c;->b(Ljava/lang/Object;Lkotlin/reflect/l;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/b/l;

    return-object v0
.end method

.method public y()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->I:Lkotlin/z/c;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->X:[Lkotlin/reflect/l;

    const/16 v2, 0x21

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/z/c;->b(Ljava/lang/Object;Lkotlin/reflect/l;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public z()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lkotlin/reflect/jvm/internal/impl/name/c;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->J:Lkotlin/z/c;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptionsImpl;->X:[Lkotlin/reflect/l;

    const/16 v2, 0x22

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/z/c;->b(Ljava/lang/Object;Lkotlin/reflect/l;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method
