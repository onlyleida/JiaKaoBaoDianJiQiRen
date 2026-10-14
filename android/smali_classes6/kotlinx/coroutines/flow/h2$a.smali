.class public final Lkotlinx/coroutines/flow/h2$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/flow/h2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field private static final a:Lkotlinx/coroutines/flow/h2;

.field private static final b:Lkotlinx/coroutines/flow/h2;

.field static final synthetic c:Lkotlinx/coroutines/flow/h2$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lkotlinx/coroutines/flow/h2$a;

    invoke-direct {v0}, Lkotlinx/coroutines/flow/h2$a;-><init>()V

    sput-object v0, Lkotlinx/coroutines/flow/h2$a;->c:Lkotlinx/coroutines/flow/h2$a;

    .line 2
    new-instance v0, Lkotlinx/coroutines/flow/i2;

    invoke-direct {v0}, Lkotlinx/coroutines/flow/i2;-><init>()V

    sput-object v0, Lkotlinx/coroutines/flow/h2$a;->a:Lkotlinx/coroutines/flow/h2;

    .line 3
    new-instance v0, Lkotlinx/coroutines/flow/StartedLazily;

    invoke-direct {v0}, Lkotlinx/coroutines/flow/StartedLazily;-><init>()V

    sput-object v0, Lkotlinx/coroutines/flow/h2$a;->b:Lkotlinx/coroutines/flow/h2;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lkotlinx/coroutines/flow/h2;
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/coroutines/flow/h2$a;->a:Lkotlinx/coroutines/flow/h2;

    return-object v0
.end method

.method public final b()Lkotlinx/coroutines/flow/h2;
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/coroutines/flow/h2$a;->b:Lkotlinx/coroutines/flow/h2;

    return-object v0
.end method
