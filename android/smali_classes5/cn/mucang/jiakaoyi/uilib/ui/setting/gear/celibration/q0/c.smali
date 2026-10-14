.class public final Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/q0/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010$\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0016\u001a\u00020\u0017J\u0018\u0010\u0018\u001a\u00020\u00172\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u001a\u001a\u00020\u0004J\u0006\u0010\u001b\u001a\u00020\u0017J\u0006\u0010\u001c\u001a\u00020\u0017J\u0010\u0010\u001d\u001a\u00020\u00172\u0006\u0010\u001e\u001a\u00020\u0004H\u0002R\u0014\u0010\u0003\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\u0017\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u000f\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u001d\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u0013\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/utils/GuideMarkPlayer;",
        "",
        "()V",
        "TAG",
        "",
        "getTAG",
        "()Ljava/lang/String;",
        "finishTonePlayer",
        "Landroid/media/MediaPlayer;",
        "isPlaying",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "()Ljava/util/concurrent/atomic/AtomicBoolean;",
        "setPlaying",
        "(Ljava/util/concurrent/atomic/AtomicBoolean;)V",
        "pendingPlayVoice",
        "Ljava/util/LinkedList;",
        "getPendingPlayVoice",
        "()Ljava/util/LinkedList;",
        "type2Voice",
        "",
        "getType2Voice",
        "()Ljava/util/Map;",
        "destroy",
        "",
        "playGuideForGear",
        "gearsCategory",
        "gearType",
        "playMarkComplete",
        "playStartMark",
        "playVoice",
        "voiceFile",
        "uilib_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private a:Landroid/media/MediaPlayer;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/q0/c;->a:Landroid/media/MediaPlayer;

    const-string v0, "GuideMarkPlayer"

    .line 3
    iput-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/q0/c;->b:Ljava/lang/String;

    .line 4
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/q0/c;->c:Ljava/util/LinkedList;

    .line 5
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/q0/c;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/16 v0, 0xb

    new-array v0, v0, [Lkotlin/Pair;

    const-string v2, "\u7a7a\u6321"

    const-string v3, "\u8bf7\u572810s\u5185\u5c06\u6321\u4f4d\u6302\u5230\u7a7a\u6321.mp3"

    .line 6
    invoke-static {v2, v3}, Lkotlin/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "1\u6321"

    const-string v2, "\u7a7a\u6321\u5b66\u4e60\u5b8c\u6210\uff0c\u8bf7\u572810s\u5185\u5c06\u6321\u4f4d\u6302\u52301\u6321.mp3"

    .line 7
    invoke-static {v1, v2}, Lkotlin/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "2\u6321"

    const-string v2, "1\u6321\u5b66\u4e60\u5b8c\u6210\uff0c\u8bf7\u572810s\u5185\u5c06\u6321\u4f4d\u6302\u52302\u6321.mp3"

    .line 8
    invoke-static {v1, v2}, Lkotlin/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "3\u6321"

    const-string v2, "2\u6321\u5b66\u4e60\u5b8c\u6210\uff0c\u8bf7\u572810s\u5185\u5c06\u6321\u4f4d\u6302\u52303\u6321.mp3"

    .line 9
    invoke-static {v1, v2}, Lkotlin/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "4\u6321"

    const-string v2, "3\u6321\u5b66\u4e60\u5b8c\u6210\uff0c\u8bf7\u572810s\u5185\u5c06\u6321\u4f4d\u6302\u52304\u6321.mp3"

    .line 10
    invoke-static {v1, v2}, Lkotlin/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "5\u6321"

    const-string v2, "4\u6321\u5b66\u4e60\u5b8c\u6210\uff0c\u8bf7\u572810s\u5185\u5c06\u6321\u4f4d\u6302\u52305\u6321.mp3"

    .line 11
    invoke-static {v1, v2}, Lkotlin/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "\u5012\u6321"

    const-string v2, "5\u6321\u5b66\u4e60\u5b8c\u6210\uff0c\u8bf7\u572810s\u5185\u5c06\u6321\u4f4d\u6302\u5230\u5012\u6321.mp3"

    .line 12
    invoke-static {v1, v2}, Lkotlin/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string v1, "P\u6321"

    const-string v2, "\u8bf7\u572810s\u5185\u5c06\u6321\u4f4d\u6302\u5230P\u6321.mp3"

    .line 13
    invoke-static {v1, v2}, Lkotlin/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string v1, "R\u6321"

    const-string v2, "P\u6321\u5b66\u4e60\u5b8c\u6210\uff0c\u8bf7\u572810s\u5185\u5c06\u6321\u4f4d\u6302\u5230R\u6321.mp3"

    .line 14
    invoke-static {v1, v2}, Lkotlin/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string v1, "N\u6321"

    const-string v2, "R\u6321\u5b66\u4e60\u5b8c\u6210\uff0c\u8bf7\u572810s\u5185\u5c06\u6321\u4f4d\u6302\u5230N\u6321.mp3"

    .line 15
    invoke-static {v1, v2}, Lkotlin/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string v1, "D\u6321"

    const-string v2, "N\u6321\u5b66\u4e60\u5b8c\u6210\uff0c\u8bf7\u572810s\u5185\u5c06\u6321\u4f4d\u6302\u5230D\u6321.mp3"

    .line 16
    invoke-static {v1, v2}, Lkotlin/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 17
    invoke-static {v0}, Lkotlin/collections/l0;->k([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/q0/c;->e:Ljava/util/Map;

    return-void
.end method

.method public static synthetic d(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/q0/c;Landroid/media/MediaPlayer;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/q0/c;->i(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/q0/c;Landroid/media/MediaPlayer;)V

    return-void
.end method

.method private final declared-synchronized h(Ljava/lang/String;)V
    .locals 7

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/q0/c;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/q0/c;->b:Ljava/lang/String;

    const-string v1, "\u7b49\u5f85\u64ad\u653e\uff1a"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/mucang/android/core/utils/t;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/q0/c;->c:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string v0, ".mp3"

    .line 5
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lkotlin/text/l;->p0(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->j(Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/q0/c;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 7
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/q0/c;->b:Ljava/lang/String;

    const-string v1, "\u5f00\u59cb\u64ad\u653e\u65b0\u7684\u4e00\u6bb5"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/mucang/android/core/utils/t;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/q0/c;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 9
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 10
    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p1

    const-string v0, "assetManager.openFd(voiceFile)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/q0/c;->a:Landroid/media/MediaPlayer;

    .line 12
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v3

    .line 13
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v5

    .line 14
    invoke-virtual/range {v1 .. v6}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 15
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/q0/c;->a:Landroid/media/MediaPlayer;

    new-instance v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/q0/a;

    invoke-direct {v0, p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/q0/a;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/q0/c;)V

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 16
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/q0/c;->a:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepare()V

    .line 17
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/q0/c;->a:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 18
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 19
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/q0/c;->b:Ljava/lang/String;

    const-string v1, "\u64ad\u653eError\uff1a"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcn/mucang/android/core/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/q0/c;->a:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    .line 21
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/q0/c;->a:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    .line 22
    new-instance p1, Landroid/media/MediaPlayer;

    invoke-direct {p1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/q0/c;->a:Landroid/media/MediaPlayer;

    .line 23
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/q0/c;->b:Ljava/lang/String;

    const-string v0, "rebuild \u64ad\u653e\u5668"

    invoke-static {p1, v0}, Lcn/mucang/android/core/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 24
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method private static final i(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/q0/c;Landroid/media/MediaPlayer;)V
    .locals 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/q0/c;->c()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/q0/c;->b()Ljava/util/LinkedList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/q0/c;->b()Ljava/util/LinkedList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object p1

    const-string v1, "pendingPlayVoice.first"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/q0/c;->h(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/q0/c;->b()Ljava/util/LinkedList;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/q0/c;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 2
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/q0/c;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    return-void
.end method

.method public final b()Ljava/util/LinkedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/q0/c;->c:Ljava/util/LinkedList;

    return-object v0
.end method

.method public final c()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/q0/c;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method public final e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "gearType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/q0/b;->a:Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/q0/b;

    invoke-virtual {v0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/q0/b;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    iget-object p2, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/q0/c;->e:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-direct {p0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/q0/c;->h(Ljava/lang/String;)V

    return-void
.end method

.method public final f()V
    .locals 1

    const-string v0, "\u6807\u5b9a\u5b8c\u6210.mp3"

    .line 1
    invoke-direct {p0, v0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/q0/c;->h(Ljava/lang/String;)V

    return-void
.end method

.method public final g()V
    .locals 1

    const-string v0, "\u5f00\u59cb\u6807\u5b9a.mp3"

    .line 1
    invoke-direct {p0, v0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/q0/c;->h(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/q0/c;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    return-void
.end method
