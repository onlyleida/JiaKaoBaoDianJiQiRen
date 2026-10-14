.class public final synthetic Lcom/google/android/exoplayer2/offline/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/metadata/MetadataOutput;


# static fields
.field public static final synthetic a:Lcom/google/android/exoplayer2/offline/a;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/exoplayer2/offline/a;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/offline/a;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/offline/a;->a:Lcom/google/android/exoplayer2/offline/a;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMetadata(Lcom/google/android/exoplayer2/metadata/Metadata;)V
    .locals 0

    invoke-static {p1}, Lcom/google/android/exoplayer2/offline/DownloadHelper;->b(Lcom/google/android/exoplayer2/metadata/Metadata;)V

    return-void
.end method
