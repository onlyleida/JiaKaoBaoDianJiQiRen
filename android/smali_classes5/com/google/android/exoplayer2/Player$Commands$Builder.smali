.class public final Lcom/google/android/exoplayer2/Player$Commands$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/Player$Commands;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final flagsBuilder:Lcom/google/android/exoplayer2/util/ExoFlags$Builder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/util/ExoFlags$Builder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/ExoFlags$Builder;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/Player$Commands$Builder;->flagsBuilder:Lcom/google/android/exoplayer2/util/ExoFlags$Builder;

    return-void
.end method


# virtual methods
.method public add(I)Lcom/google/android/exoplayer2/Player$Commands$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/Player$Commands$Builder;->flagsBuilder:Lcom/google/android/exoplayer2/util/ExoFlags$Builder;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/util/ExoFlags$Builder;->add(I)Lcom/google/android/exoplayer2/util/ExoFlags$Builder;

    return-object p0
.end method

.method public addAll(Lcom/google/android/exoplayer2/Player$Commands;)Lcom/google/android/exoplayer2/Player$Commands$Builder;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/Player$Commands$Builder;->flagsBuilder:Lcom/google/android/exoplayer2/util/ExoFlags$Builder;

    invoke-static {p1}, Lcom/google/android/exoplayer2/Player$Commands;->access$000(Lcom/google/android/exoplayer2/Player$Commands;)Lcom/google/android/exoplayer2/util/ExoFlags;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/util/ExoFlags$Builder;->addAll(Lcom/google/android/exoplayer2/util/ExoFlags;)Lcom/google/android/exoplayer2/util/ExoFlags$Builder;

    return-object p0
.end method

.method public varargs addAll([I)Lcom/google/android/exoplayer2/Player$Commands$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/Player$Commands$Builder;->flagsBuilder:Lcom/google/android/exoplayer2/util/ExoFlags$Builder;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/util/ExoFlags$Builder;->addAll([I)Lcom/google/android/exoplayer2/util/ExoFlags$Builder;

    return-object p0
.end method

.method public addIf(IZ)Lcom/google/android/exoplayer2/Player$Commands$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/Player$Commands$Builder;->flagsBuilder:Lcom/google/android/exoplayer2/util/ExoFlags$Builder;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/util/ExoFlags$Builder;->addIf(IZ)Lcom/google/android/exoplayer2/util/ExoFlags$Builder;

    return-object p0
.end method

.method public build()Lcom/google/android/exoplayer2/Player$Commands;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/exoplayer2/Player$Commands;

    iget-object v1, p0, Lcom/google/android/exoplayer2/Player$Commands$Builder;->flagsBuilder:Lcom/google/android/exoplayer2/util/ExoFlags$Builder;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ExoFlags$Builder;->build()Lcom/google/android/exoplayer2/util/ExoFlags;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/Player$Commands;-><init>(Lcom/google/android/exoplayer2/util/ExoFlags;Lcom/google/android/exoplayer2/Player$1;)V

    return-object v0
.end method
