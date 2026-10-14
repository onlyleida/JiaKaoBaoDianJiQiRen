.class public final synthetic Lcom/google/android/exoplayer2/source/ads/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/Bundleable$Creator;


# static fields
.field public static final synthetic a:Lcom/google/android/exoplayer2/source/ads/b;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/exoplayer2/source/ads/b;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/source/ads/b;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/source/ads/b;->a:Lcom/google/android/exoplayer2/source/ads/b;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromBundle(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/Bundleable;
    .locals 0

    invoke-static {p1}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->a(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    move-result-object p1

    return-object p1
.end method
