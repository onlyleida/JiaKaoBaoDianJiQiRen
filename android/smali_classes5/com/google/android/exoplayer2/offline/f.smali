.class public final synthetic Lcom/google/android/exoplayer2/offline/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/text/TextOutput;


# static fields
.field public static final synthetic a:Lcom/google/android/exoplayer2/offline/f;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/exoplayer2/offline/f;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/offline/f;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/offline/f;->a:Lcom/google/android/exoplayer2/offline/f;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCues(Ljava/util/List;)V
    .locals 0

    invoke-static {p1}, Lcom/google/android/exoplayer2/offline/DownloadHelper;->a(Ljava/util/List;)V

    return-void
.end method
