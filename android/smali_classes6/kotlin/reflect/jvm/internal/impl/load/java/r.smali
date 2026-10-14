.class public final Lkotlin/reflect/jvm/internal/impl/load/java/r;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lkotlin/reflect/jvm/internal/impl/name/c;

.field public static final b:Lkotlin/reflect/jvm/internal/impl/name/f;

.field public static final c:Lkotlin/reflect/jvm/internal/impl/name/c;

.field public static final d:Lkotlin/reflect/jvm/internal/impl/name/c;

.field public static final e:Lkotlin/reflect/jvm/internal/impl/name/c;

.field public static final f:Lkotlin/reflect/jvm/internal/impl/name/c;

.field public static final g:Lkotlin/reflect/jvm/internal/impl/name/c;

.field public static final h:Lkotlin/reflect/jvm/internal/impl/name/c;

.field public static final i:Lkotlin/reflect/jvm/internal/impl/name/c;

.field public static final j:Lkotlin/reflect/jvm/internal/impl/name/c;

.field public static final k:Lkotlin/reflect/jvm/internal/impl/name/c;

.field public static final l:Lkotlin/reflect/jvm/internal/impl/name/c;

.field public static final m:Lkotlin/reflect/jvm/internal/impl/name/c;

.field public static final n:Lkotlin/reflect/jvm/internal/impl/name/c;

.field public static final o:Lkotlin/reflect/jvm/internal/impl/name/c;

.field public static final p:Lkotlin/reflect/jvm/internal/impl/name/c;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/name/c;

    const-string v1, "kotlin.Metadata"

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/name/c;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/r;->a:Lkotlin/reflect/jvm/internal/impl/name/c;

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "L"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/d;->c(Lkotlin/reflect/jvm/internal/impl/name/c;)Lkotlin/reflect/jvm/internal/impl/resolve/jvm/d;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/d;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ";"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const-string v0, "value"

    .line 3
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/name/f;->g(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/f;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/r;->b:Lkotlin/reflect/jvm/internal/impl/name/f;

    .line 4
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/name/c;

    const-class v1, Ljava/lang/annotation/Target;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/name/c;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/r;->c:Lkotlin/reflect/jvm/internal/impl/name/c;

    .line 5
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/name/c;

    const-class v1, Ljava/lang/annotation/Retention;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/name/c;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/r;->d:Lkotlin/reflect/jvm/internal/impl/name/c;

    .line 6
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/name/c;

    const-class v1, Ljava/lang/Deprecated;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/name/c;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/r;->e:Lkotlin/reflect/jvm/internal/impl/name/c;

    .line 7
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/name/c;

    const-class v1, Ljava/lang/annotation/Documented;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/name/c;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/r;->f:Lkotlin/reflect/jvm/internal/impl/name/c;

    .line 8
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/name/c;

    const-string v1, "java.lang.annotation.Repeatable"

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/name/c;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/r;->g:Lkotlin/reflect/jvm/internal/impl/name/c;

    .line 9
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/name/c;

    const-string v1, "org.jetbrains.annotations.NotNull"

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/name/c;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/r;->h:Lkotlin/reflect/jvm/internal/impl/name/c;

    .line 10
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/name/c;

    const-string v1, "org.jetbrains.annotations.Nullable"

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/name/c;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/r;->i:Lkotlin/reflect/jvm/internal/impl/name/c;

    .line 11
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/name/c;

    const-string v1, "org.jetbrains.annotations.Mutable"

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/name/c;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/r;->j:Lkotlin/reflect/jvm/internal/impl/name/c;

    .line 12
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/name/c;

    const-string v1, "org.jetbrains.annotations.ReadOnly"

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/name/c;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/r;->k:Lkotlin/reflect/jvm/internal/impl/name/c;

    .line 13
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/name/c;

    const-string v1, "kotlin.annotations.jvm.ReadOnly"

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/name/c;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/r;->l:Lkotlin/reflect/jvm/internal/impl/name/c;

    .line 14
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/name/c;

    const-string v1, "kotlin.annotations.jvm.Mutable"

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/name/c;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/r;->m:Lkotlin/reflect/jvm/internal/impl/name/c;

    .line 15
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/name/c;

    const-string v1, "kotlin.jvm.PurelyImplements"

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/name/c;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/r;->n:Lkotlin/reflect/jvm/internal/impl/name/c;

    .line 16
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/name/c;

    const-string v1, "kotlin.jvm.internal"

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/name/c;-><init>(Ljava/lang/String;)V

    .line 17
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/name/c;

    const-string v1, "kotlin.jvm.internal.EnhancedNullability"

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/name/c;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/r;->o:Lkotlin/reflect/jvm/internal/impl/name/c;

    .line 18
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/name/c;

    const-string v1, "kotlin.jvm.internal.EnhancedMutability"

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/name/c;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/r;->p:Lkotlin/reflect/jvm/internal/impl/name/c;

    return-void
.end method
