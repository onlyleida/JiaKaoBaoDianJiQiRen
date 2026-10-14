.class public final Lcn/mucang/android/jiakaoyi/teachingk2/w0/b/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B+\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0002\u0010\nJ\u0006\u0010\u000f\u001a\u00020\u0010J\u0006\u0010\u0011\u001a\u00020\u0010J\u0018\u0010\u0012\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u000c2\u0006\u0010\u0014\u001a\u00020\u0015H\u0002J\u0006\u0010\u0016\u001a\u00020\u0010R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/humanize/handle/HomeStayRule;",
        "",
        "isK2",
        "",
        "tipSpeaker",
        "Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipSpeaker;",
        "tipsValue",
        "Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsValue;",
        "arguments",
        "Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsArguments;",
        "(ZLcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipSpeaker;Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsValue;Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsArguments;)V",
        "homeStayCheckTask",
        "Ljava/lang/Runnable;",
        "openExamTip",
        "openTrainTip",
        "onPageEnter",
        "",
        "onPageOut",
        "runTask",
        "task",
        "delay",
        "",
        "stop",
        "teachbase_release"
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
.field private final a:Z

.field private final b:Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/r;

.field private final c:Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/t;

.field private final d:Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsArguments;

.field private e:Z

.field private f:Z

.field private final g:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(ZLcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/r;Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/t;Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsArguments;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/w0/b/c;->a:Z

    .line 3
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/w0/b/c;->b:Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/r;

    .line 4
    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/w0/b/c;->c:Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/t;

    .line 5
    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/w0/b/c;->d:Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsArguments;

    .line 6
    new-instance p1, Lcn/mucang/android/jiakaoyi/teachingk2/w0/b/a;

    invoke-direct {p1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/w0/b/a;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/w0/b/c;)V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/w0/b/c;->g:Ljava/lang/Runnable;

    return-void
.end method

.method private static final a(Lcn/mucang/android/jiakaoyi/teachingk2/w0/b/c;)V
    .locals 13

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/w0/b/c;->c:Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/t;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-wide v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/t;->j:J

    const-wide/32 v2, 0x927c0

    const/4 v4, 0x1

    cmp-long v5, v0, v2

    if-gez v5, :cond_3

    .line 3
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/w0/b/c;->e:Z

    if-nez v0, :cond_6

    .line 4
    iput-boolean v4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/w0/b/c;->e:Z

    .line 5
    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/teachingk2/w0/b/c;->b:Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/r;

    if-nez v5, :cond_1

    goto :goto_2

    :cond_1
    iget-boolean p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/w0/b/c;->a:Z

    if-eqz p0, :cond_2

    .line 6
    sget-object p0, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsRule;->GUIDE_100106:Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsRule;

    goto :goto_0

    .line 7
    :cond_2
    sget-object p0, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsRule;->GUIDE_130106:Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsRule;

    :goto_0
    move-object v6, p0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x1a

    const/4 v12, 0x0

    .line 8
    invoke-static/range {v5 .. v12}, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/r;->g(Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/r;Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsRule;ZZZLcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;ILjava/lang/Object;)V

    goto :goto_2

    .line 9
    :cond_3
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/w0/b/c;->f:Z

    if-nez v0, :cond_6

    .line 10
    iput-boolean v4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/w0/b/c;->f:Z

    .line 11
    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/teachingk2/w0/b/c;->b:Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/r;

    if-nez v5, :cond_4

    goto :goto_2

    :cond_4
    iget-boolean p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/w0/b/c;->a:Z

    if-eqz p0, :cond_5

    .line 12
    sget-object p0, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsRule;->GUIDE_100107:Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsRule;

    goto :goto_1

    .line 13
    :cond_5
    sget-object p0, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsRule;->GUIDE_130107:Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsRule;

    :goto_1
    move-object v6, p0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x1a

    const/4 v12, 0x0

    .line 14
    invoke-static/range {v5 .. v12}, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/r;->g(Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/r;Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsRule;ZZZLcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;ILjava/lang/Object;)V

    :cond_6
    :goto_2
    return-void
.end method

.method public static synthetic b(Lcn/mucang/android/jiakaoyi/teachingk2/w0/b/c;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/w0/b/c;->a(Lcn/mucang/android/jiakaoyi/teachingk2/w0/b/c;)V

    return-void
.end method

.method private final e(Ljava/lang/Runnable;J)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->e(Ljava/lang/Runnable;)V

    .line 2
    invoke-static {p1, p2, p3}, Lcn/mucang/android/core/utils/u;->d(Ljava/lang/Runnable;J)V

    return-void
.end method


# virtual methods
.method public final c()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/w0/b/c;->d:Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsArguments;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/w0/b/c;->e:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/w0/b/c;->f:Z

    if-nez v1, :cond_3

    .line 3
    :cond_1
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/w0/b/c;->g:Ljava/lang/Runnable;

    .line 4
    iget-boolean v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/w0/b/c;->a:Z

    if-eqz v2, :cond_2

    .line 5
    sget-object v2, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsRule;->GUIDE_100106:Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsRule;

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsRule;->getRuleCode()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 6
    :cond_2
    sget-object v2, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsRule;->GUIDE_130106:Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsRule;

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsRule;->getRuleCode()Ljava/lang/String;

    move-result-object v2

    :goto_0
    const-wide/32 v3, 0xea60

    .line 7
    invoke-virtual {v0, v2, v3, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsArguments;->getParamTimeMs(Ljava/lang/String;J)J

    move-result-wide v2

    .line 8
    invoke-direct {p0, v1, v2, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/w0/b/c;->e(Ljava/lang/Runnable;J)V

    :cond_3
    return-void
.end method

.method public final d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/w0/b/c;->g:Ljava/lang/Runnable;

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->e(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final f()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/w0/b/c;->g:Ljava/lang/Runnable;

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->e(Ljava/lang/Runnable;)V

    return-void
.end method
