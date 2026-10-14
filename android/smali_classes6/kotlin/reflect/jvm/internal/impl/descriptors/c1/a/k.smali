.class public final Lkotlin/reflect/jvm/internal/impl/descriptors/c1/a/k;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/descriptors/c1/a/k$a;
    }
.end annotation


# static fields
.field public static final c:Lkotlin/reflect/jvm/internal/impl/descriptors/c1/a/k$a;


# instance fields
.field private final a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/g;

.field private final b:Lkotlin/reflect/jvm/internal/impl/descriptors/c1/a/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/descriptors/c1/a/k$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/c1/a/k$a;-><init>(Lkotlin/jvm/internal/o;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/c1/a/k;->c:Lkotlin/reflect/jvm/internal/impl/descriptors/c1/a/k$a;

    return-void
.end method

.method private constructor <init>(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/g;Lkotlin/reflect/jvm/internal/impl/descriptors/c1/a/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/c1/a/k;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/g;

    .line 3
    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/c1/a/k;->b:Lkotlin/reflect/jvm/internal/impl/descriptors/c1/a/a;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/g;Lkotlin/reflect/jvm/internal/impl/descriptors/c1/a/a;Lkotlin/jvm/internal/o;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/c1/a/k;-><init>(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/g;Lkotlin/reflect/jvm/internal/impl/descriptors/c1/a/a;)V

    return-void
.end method


# virtual methods
.method public final a()Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/c1/a/k;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/g;

    return-object v0
.end method

.method public final b()Lkotlin/reflect/jvm/internal/impl/descriptors/z;
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/c1/a/k;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/g;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/g;->p()Lkotlin/reflect/jvm/internal/impl/descriptors/z;

    move-result-object v0

    return-object v0
.end method

.method public final c()Lkotlin/reflect/jvm/internal/impl/descriptors/c1/a/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/c1/a/k;->b:Lkotlin/reflect/jvm/internal/impl/descriptors/c1/a/a;

    return-object v0
.end method
