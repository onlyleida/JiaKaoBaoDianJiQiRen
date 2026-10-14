.class public Lcn/mucang/android/jiakaoyi/framework/tts/play/g/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcn/mucang/android/jiakaoyi/framework/tts/play/e;

.field private volatile b:Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;

.field private volatile c:Z


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/framework/tts/play/e;Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/g/f;->a:Lcn/mucang/android/jiakaoyi/framework/tts/play/e;

    .line 3
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/g/f;->b:Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/g/f;->c:Z

    return-void
.end method

.method static synthetic a(Lcn/mucang/android/jiakaoyi/framework/tts/play/g/f;)Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/g/f;->b:Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;

    return-object p0
.end method

.method static synthetic b(Lcn/mucang/android/jiakaoyi/framework/tts/play/g/f;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/g/f;->c:Z

    return p1
.end method

.method static synthetic c(Lcn/mucang/android/jiakaoyi/framework/tts/play/g/f;)Lcn/mucang/android/jiakaoyi/framework/tts/play/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/g/f;->a:Lcn/mucang/android/jiakaoyi/framework/tts/play/e;

    return-object p0
.end method


# virtual methods
.method public d()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/g/f;->c:Z

    return v0
.end method

.method public e(Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;)V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/g/f;->c:Z

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer;->a:Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer;

    new-instance v1, Lcn/mucang/android/jiakaoyi/framework/tts/play/g/f$a;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/framework/tts/play/g/f$a;-><init>(Lcn/mucang/android/jiakaoyi/framework/tts/play/g/f;)V

    invoke-virtual {v0, p1, v1}, Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer;->m(Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;Lcn/mucang/android/jiakaoyi/framework/tts/play/e;)V

    return-void
.end method

.method public f()V
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer;->a:Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/g/f;->b:Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer;->n(Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;)V

    return-void
.end method
