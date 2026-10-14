.class public final Lkotlin/reflect/jvm/internal/impl/load/java/t$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/load/java/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field static final synthetic a:Lkotlin/reflect/jvm/internal/impl/load/java/t$a;

.field private static final b:Lkotlin/reflect/jvm/internal/impl/load/java/t;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/java/t$a;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/t$a;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/t$a;->a:Lkotlin/reflect/jvm/internal/impl/load/java/t$a;

    .line 1
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/java/NullabilityAnnotationStatesImpl;

    invoke-static {}, Lkotlin/collections/l0;->h()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/load/java/NullabilityAnnotationStatesImpl;-><init>(Ljava/util/Map;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/t$a;->b:Lkotlin/reflect/jvm/internal/impl/load/java/t;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lkotlin/reflect/jvm/internal/impl/load/java/t;
    .locals 1

    .line 1
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/t$a;->b:Lkotlin/reflect/jvm/internal/impl/load/java/t;

    return-object v0
.end method
