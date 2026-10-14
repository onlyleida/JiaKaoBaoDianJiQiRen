.class public final synthetic Lcom/google/android/exoplayer2/offline/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;


# static fields
.field public static final synthetic a:Lcom/google/android/exoplayer2/offline/m;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/exoplayer2/offline/m;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/offline/m;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/offline/m;->a:Lcom/google/android/exoplayer2/offline/m;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method
