.class public final Lkotlin/reflect/jvm/internal/impl/descriptors/impl/x$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/descriptors/impl/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field static final synthetic a:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/x$a;

.field private static final b:Lkotlin/reflect/jvm/internal/impl/descriptors/y;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/jvm/internal/impl/descriptors/y<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/impl/x;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/x$a;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/x$a;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/x$a;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/x$a;

    .line 1
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/descriptors/y;

    const-string v1, "PackageViewDescriptorFactory"

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/y;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/x$a;->b:Lkotlin/reflect/jvm/internal/impl/descriptors/y;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lkotlin/reflect/jvm/internal/impl/descriptors/y;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/y<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/impl/x;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/x$a;->b:Lkotlin/reflect/jvm/internal/impl/descriptors/y;

    return-object v0
.end method
