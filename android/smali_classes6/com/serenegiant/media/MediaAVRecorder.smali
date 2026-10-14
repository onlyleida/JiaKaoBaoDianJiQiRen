.class public Lcom/serenegiant/media/MediaAVRecorder;
.super Lcom/serenegiant/media/AbstractMediaAVRecorder;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MediaAVRecorder"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/serenegiant/media/IRecorder$RecorderCallback;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    invoke-direct/range {p0 .. p5}, Lcom/serenegiant/media/AbstractMediaAVRecorder;-><init>(Landroid/content/Context;Lcom/serenegiant/media/IRecorder$RecorderCallback;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/serenegiant/media/IRecorder$RecorderCallback;Landroidx/documentfile/a/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    invoke-direct {p0, p1, p2, p3}, Lcom/serenegiant/media/AbstractMediaAVRecorder;-><init>(Landroid/content/Context;Lcom/serenegiant/media/IRecorder$RecorderCallback;Landroidx/documentfile/a/a;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/serenegiant/media/IRecorder$RecorderCallback;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    invoke-direct {p0, p1, p2, p3}, Lcom/serenegiant/media/AbstractMediaAVRecorder;-><init>(Landroid/content/Context;Lcom/serenegiant/media/IRecorder$RecorderCallback;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/serenegiant/media/IRecorder$RecorderCallback;Ljava/lang/String;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    .line 1
    invoke-direct/range {v0 .. v5}, Lcom/serenegiant/media/AbstractMediaAVRecorder;-><init>(Landroid/content/Context;Lcom/serenegiant/media/IRecorder$RecorderCallback;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/serenegiant/media/IRecorder$RecorderCallback;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-direct/range {p0 .. p5}, Lcom/serenegiant/media/AbstractMediaAVRecorder;-><init>(Landroid/content/Context;Lcom/serenegiant/media/IRecorder$RecorderCallback;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method protected setupMuxer(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/serenegiant/media/Recorder;->createMuxer(I)Lcom/serenegiant/media/IMuxer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/serenegiant/media/Recorder;->setMuxer(Lcom/serenegiant/media/IMuxer;)V

    return-void
.end method

.method protected setupMuxer(Landroid/content/Context;Landroidx/documentfile/a/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    invoke-static {p1, p2}, Lcom/serenegiant/media/Recorder;->createMuxer(Landroid/content/Context;Landroidx/documentfile/a/a;)Lcom/serenegiant/media/IMuxer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/serenegiant/media/Recorder;->setMuxer(Lcom/serenegiant/media/IMuxer;)V

    return-void
.end method

.method protected setupMuxer(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-static {p1}, Lcom/serenegiant/media/Recorder;->createMuxer(Ljava/lang/String;)Lcom/serenegiant/media/IMuxer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/serenegiant/media/Recorder;->setMuxer(Lcom/serenegiant/media/IMuxer;)V

    return-void
.end method
