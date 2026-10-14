.class Lcn/mucang/android/jiakaoyi/framework/tts/play/f$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/framework/tts/play/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field private final a:Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;

.field private b:Lcn/mucang/android/jiakaoyi/framework/tts/play/g/e;

.field private c:Lcn/mucang/android/jiakaoyi/framework/tts/play/g/d;

.field private d:Lcn/mucang/android/jiakaoyi/framework/tts/play/g/f;

.field private volatile e:Z

.field private f:F

.field final synthetic g:Lcn/mucang/android/jiakaoyi/framework/tts/play/f;


# direct methods
.method private constructor <init>(Lcn/mucang/android/jiakaoyi/framework/tts/play/f;Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/f$b;->g:Lcn/mucang/android/jiakaoyi/framework/tts/play/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/f$b;->a:Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/f$b;->e:Z

    const/high16 p1, 0x3f800000    # 1.0f

    .line 5
    iput p1, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/f$b;->f:F

    return-void
.end method

.method synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/framework/tts/play/f;Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;Lcn/mucang/android/jiakaoyi/framework/tts/play/f$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/framework/tts/play/f$b;-><init>(Lcn/mucang/android/jiakaoyi/framework/tts/play/f;Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;)V

    return-void
.end method

.method private synthetic b(Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;Ljava/lang/Boolean;)V
    .locals 1

    .line 1
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/f$b;->c:Lcn/mucang/android/jiakaoyi/framework/tts/play/g/d;

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/framework/tts/play/g/d;->j()V

    const/4 p2, 0x0

    .line 2
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/f$b;->c:Lcn/mucang/android/jiakaoyi/framework/tts/play/g/d;

    .line 3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "aac\u64ad\u653e\u5931\u8d25:tts play"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;->e:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 4
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/framework/tts/play/f$b;->i(Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;)V

    return-void
.end method

.method private synthetic d(Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;Ljava/lang/Boolean;)V
    .locals 1

    .line 1
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/f$b;->b:Lcn/mucang/android/jiakaoyi/framework/tts/play/g/e;

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/framework/tts/play/g/e;->e()V

    const/4 p2, 0x0

    .line 2
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/f$b;->b:Lcn/mucang/android/jiakaoyi/framework/tts/play/g/e;

    .line 3
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/framework/tts/play/f$b;->i(Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;)V

    .line 4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "pcm\u64ad\u653e\u5931\u8d25:tts play"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;->e:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    return-void
.end method

.method private f()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/f$b;->a:Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/f$b;->g:Lcn/mucang/android/jiakaoyi/framework/tts/play/f;

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/tts/play/f;->a(Lcn/mucang/android/jiakaoyi/framework/tts/play/f;)Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;

    move-result-object v1

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/f$b;->e:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    .line 2
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/f$b;->a:Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;->g:Lcn/mucang/android/jiakaoyi/framework/tts/f;

    if-eqz v1, :cond_2

    .line 3
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcn/mucang/android/jiakaoyi/framework/tts/play/a;

    invoke-direct {v2, v1}, Lcn/mucang/android/jiakaoyi/framework/tts/play/a;-><init>(Lcn/mucang/android/jiakaoyi/framework/tts/f;)V

    invoke-static {v2}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    :cond_2
    return v0
.end method

.method private g(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;Z)V
    .locals 2

    .line 1
    iget-boolean p3, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/f$b;->e:Z

    if-nez p3, :cond_1

    iget-boolean p3, p2, Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;->i:Z

    if-nez p3, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p3, Lcn/mucang/android/jiakaoyi/framework/tts/play/g/d;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/f$b;->g:Lcn/mucang/android/jiakaoyi/framework/tts/play/f;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/tts/play/f;->b(Lcn/mucang/android/jiakaoyi/framework/tts/play/f;)Lcn/mucang/android/jiakaoyi/framework/tts/play/e;

    move-result-object v0

    new-instance v1, Lcn/mucang/android/jiakaoyi/framework/tts/play/c;

    invoke-direct {v1, p0, p2}, Lcn/mucang/android/jiakaoyi/framework/tts/play/c;-><init>(Lcn/mucang/android/jiakaoyi/framework/tts/play/f$b;Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;)V

    invoke-direct {p3, v0, p2, v1}, Lcn/mucang/android/jiakaoyi/framework/tts/play/g/d;-><init>(Lcn/mucang/android/jiakaoyi/framework/tts/play/e;Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;Lcn/mucang/android/jiakaoyi/framework/h/b;)V

    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/f$b;->c:Lcn/mucang/android/jiakaoyi/framework/tts/play/g/d;

    .line 3
    iget v0, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/f$b;->f:F

    invoke-virtual {p3, v0}, Lcn/mucang/android/jiakaoyi/framework/tts/play/g/d;->k(F)V

    .line 4
    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/f$b;->c:Lcn/mucang/android/jiakaoyi/framework/tts/play/g/d;

    invoke-virtual {p3, p1}, Lcn/mucang/android/jiakaoyi/framework/tts/play/g/d;->i(Ljava/lang/String;)V

    .line 5
    iget p1, p2, Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;->j:I

    const/4 p2, 0x2

    if-ne p1, p2, :cond_1

    :cond_1
    :goto_0
    return-void
.end method

.method private h(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/f$b;->e:Z

    if-nez v0, :cond_1

    iget-boolean v0, p2, Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;->i:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/tts/play/g/e;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/f$b;->g:Lcn/mucang/android/jiakaoyi/framework/tts/play/f;

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/tts/play/f;->b(Lcn/mucang/android/jiakaoyi/framework/tts/play/f;)Lcn/mucang/android/jiakaoyi/framework/tts/play/e;

    move-result-object v1

    new-instance v2, Lcn/mucang/android/jiakaoyi/framework/tts/play/d;

    invoke-direct {v2, p0, p2}, Lcn/mucang/android/jiakaoyi/framework/tts/play/d;-><init>(Lcn/mucang/android/jiakaoyi/framework/tts/play/f$b;Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;)V

    invoke-direct {v0, v1, p2, v2}, Lcn/mucang/android/jiakaoyi/framework/tts/play/g/e;-><init>(Lcn/mucang/android/jiakaoyi/framework/tts/play/e;Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;Lcn/mucang/android/jiakaoyi/framework/h/b;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/f$b;->b:Lcn/mucang/android/jiakaoyi/framework/tts/play/g/e;

    .line 3
    iget p2, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/f$b;->f:F

    invoke-virtual {v0, p2}, Lcn/mucang/android/jiakaoyi/framework/tts/play/g/e;->f(F)V

    .line 4
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/f$b;->b:Lcn/mucang/android/jiakaoyi/framework/tts/play/g/e;

    invoke-virtual {p2, p1}, Lcn/mucang/android/jiakaoyi/framework/tts/play/g/e;->d(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private i(Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/f$b;->d:Lcn/mucang/android/jiakaoyi/framework/tts/play/g/f;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/tts/play/g/f;->f()V

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/f$b;->e:Z

    if-eqz v0, :cond_1

    return-void

    .line 4
    :cond_1
    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/tts/play/g/f;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/f$b;->g:Lcn/mucang/android/jiakaoyi/framework/tts/play/f;

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/tts/play/f;->b(Lcn/mucang/android/jiakaoyi/framework/tts/play/f;)Lcn/mucang/android/jiakaoyi/framework/tts/play/e;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcn/mucang/android/jiakaoyi/framework/tts/play/g/f;-><init>(Lcn/mucang/android/jiakaoyi/framework/tts/play/e;Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/f$b;->d:Lcn/mucang/android/jiakaoyi/framework/tts/play/g/f;

    .line 5
    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/framework/tts/play/g/f;->e(Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;)V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/f$b;->b:Lcn/mucang/android/jiakaoyi/framework/tts/play/g/e;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/tts/play/g/e;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/f$b;->e:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 3
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/f$b;->c:Lcn/mucang/android/jiakaoyi/framework/tts/play/g/d;

    if-eqz v0, :cond_3

    .line 4
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/tts/play/g/d;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/f$b;->e:Z

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return v1

    .line 5
    :cond_3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/f$b;->d:Lcn/mucang/android/jiakaoyi/framework/tts/play/g/f;

    if-eqz v0, :cond_5

    .line 6
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/tts/play/g/f;->d()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/f$b;->e:Z

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    :goto_2
    return v1

    :cond_5
    return v2
.end method

.method public synthetic c(Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/framework/tts/play/f$b;->b(Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;Ljava/lang/Boolean;)V

    return-void
.end method

.method public synthetic e(Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/framework/tts/play/f$b;->d(Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;Ljava/lang/Boolean;)V

    return-void
.end method

.method public j(F)V
    .locals 1

    .line 1
    iput p1, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/f$b;->f:F

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/f$b;->b:Lcn/mucang/android/jiakaoyi/framework/tts/play/g/e;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/framework/tts/play/g/e;->f(F)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/f$b;->c:Lcn/mucang/android/jiakaoyi/framework/tts/play/g/d;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/framework/tts/play/g/d;->k(F)V

    :cond_1
    return-void
.end method

.method k()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/f$b;->e:Z

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/f$b;->b:Lcn/mucang/android/jiakaoyi/framework/tts/play/g/e;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/tts/play/g/e;->g()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/f$b;->c:Lcn/mucang/android/jiakaoyi/framework/tts/play/g/d;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/tts/play/g/d;->l()V

    .line 6
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/f$b;->d:Lcn/mucang/android/jiakaoyi/framework/tts/play/g/f;

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/tts/play/g/f;->f()V

    .line 8
    :cond_2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/f$b;->b:Lcn/mucang/android/jiakaoyi/framework/tts/play/g/e;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/f$b;->c:Lcn/mucang/android/jiakaoyi/framework/tts/play/g/d;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/f$b;->d:Lcn/mucang/android/jiakaoyi/framework/tts/play/g/f;

    if-nez v0, :cond_3

    .line 9
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/f$b;->g:Lcn/mucang/android/jiakaoyi/framework/tts/play/f;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/tts/play/f;->b(Lcn/mucang/android/jiakaoyi/framework/tts/play/f;)Lcn/mucang/android/jiakaoyi/framework/tts/play/e;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/f$b;->a:Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;

    invoke-interface {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/tts/play/e;->a(Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;)V

    :cond_3
    return-void
.end method

.method public run()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/f$b;->a:Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;->a()Ljava/lang/String;

    move-result-object v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/f$b;->a:Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;

    iget v2, v1, Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;->h:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tts TtsType "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/f$b;->a:Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/f$b;->a:Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;

    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/framework/tts/play/f$b;->i(Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;)V

    return-void

    .line 5
    :cond_0
    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;->d:Ljava/lang/String;

    invoke-static {v1}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-string v2, "tts "

    const/4 v4, 0x0

    if-eqz v1, :cond_3

    .line 6
    :try_start_1
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/f$b;->a:Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;->d:Ljava/lang/String;

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/tts/i/b;->j(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 7
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 8
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const-string v6, "; voiceUrl="

    if-eqz v1, :cond_1

    .line 9
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/f$b;->a:Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/f$b;->a:Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 10
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/f$b;->a:Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;

    invoke-direct {p0, v5, v0, v4}, Lcn/mucang/android/jiakaoyi/framework/tts/play/f$b;->g(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;Z)V

    return-void

    .line 11
    :cond_1
    new-instance v1, Lcn/mucang/android/jiakaoyi/framework/tts/voice/n;

    iget-object v7, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/f$b;->a:Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;

    iget-object v7, v7, Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;->d:Ljava/lang/String;

    invoke-direct {v1, v7, v5}, Lcn/mucang/android/jiakaoyi/framework/tts/voice/n;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/framework/tts/voice/n;->c()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tts Download "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/f$b;->a:Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/f$b;->a:Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 13
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/f$b;->a:Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;

    invoke-direct {p0, v5, v0, v4}, Lcn/mucang/android/jiakaoyi/framework/tts/play/f$b;->g(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;Z)V

    return-void

    .line 14
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u8bed\u97f3\u64ad\u653e\u6587\u4ef6\u4e0b\u8f7d\u5931\u8d25:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/f$b;->a:Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;->d:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 15
    :cond_3
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/f$b;->a:Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;

    iget v5, v1, Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;->a:I

    .line 16
    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;->b:Ljava/lang/String;

    if-lez v5, :cond_6

    .line 17
    invoke-static {}, Lcn/mucang/android/account/AccountManager;->h()Lcn/mucang/android/account/AccountManager;

    move-result-object v6

    invoke-virtual {v6}, Lcn/mucang/android/account/AccountManager;->l()Z

    move-result v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const-string v7, "; code ="

    if-eqz v6, :cond_4

    .line 18
    :try_start_3
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcn/mucang/android/jiakaoyi/framework/tts/i/b;->h(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 19
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tts userVoiceFile "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/f$b;->a:Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 21
    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/f$b;->a:Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;

    invoke-direct {p0, v0, v1, v4}, Lcn/mucang/android/jiakaoyi/framework/tts/play/f$b;->g(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;Z)V

    return-void

    .line 22
    :cond_4
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/tts/play/f$b;->f()Z

    move-result v6

    if-eqz v6, :cond_5

    return-void

    .line 23
    :cond_5
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/tts/i/c;->d()Lcn/mucang/android/jiakaoyi/framework/tts/i/c;

    move-result-object v6

    invoke-virtual {v6}, Lcn/mucang/android/jiakaoyi/framework/tts/i/c;->c()Ljava/io/File;

    move-result-object v6

    invoke-static {v5, v6}, Lcn/mucang/android/jiakaoyi/framework/tts/i/b;->a(ILjava/io/File;)Ljava/io/File;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 24
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tts voicePackFile "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/f$b;->a:Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 26
    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/f$b;->a:Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;

    invoke-direct {p0, v0, v1, v4}, Lcn/mucang/android/jiakaoyi/framework/tts/play/f$b;->g(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;Z)V

    return-void

    .line 27
    :cond_6
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/tts/play/f$b;->f()Z

    move-result v5

    if-eqz v5, :cond_7

    return-void

    .line 28
    :cond_7
    invoke-static {v1}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-static {}, Lcn/mucang/android/account/AccountManager;->h()Lcn/mucang/android/account/AccountManager;

    move-result-object v5

    invoke-virtual {v5}, Lcn/mucang/android/account/AccountManager;->l()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 29
    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/tts/i/b;->h(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    if-eqz v5, :cond_8

    .line 30
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/f$b;->a:Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; userVoiceKey ="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 32
    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/f$b;->a:Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;

    invoke-direct {p0, v0, v1, v4}, Lcn/mucang/android/jiakaoyi/framework/tts/play/f$b;->g(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;Z)V

    return-void

    .line 33
    :cond_8
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/tts/play/f$b;->f()Z

    move-result v1

    if-eqz v1, :cond_9

    return-void

    .line 34
    :cond_9
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/f$b;->a:Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;->b()Ljava/lang/String;

    move-result-object v1

    .line 35
    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/tts/i/b;->f(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 36
    sget-boolean v5, Lcn/mucang/android/jiakaoyi/framework/utils/q;->b:Z

    if-eqz v5, :cond_a

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_a

    .line 37
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/tts/i/b;->f(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 38
    :cond_a
    iget-object v6, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/f$b;->a:Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;

    iget v6, v6, Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;->j:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/4 v7, 0x2

    const-string v8, "; fileKey ="

    if-eq v6, v7, :cond_c

    :try_start_4
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_c

    .line 39
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/16 v9, 0x0

    cmp-long v11, v6, v9

    if-nez v11, :cond_b

    .line 40
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 41
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tts pcm "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/f$b;->a:Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 42
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/f$b;->a:Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;

    invoke-direct {p0, v0, v1}, Lcn/mucang/android/jiakaoyi/framework/tts/play/f$b;->h(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;)V

    return-void

    .line 43
    :cond_c
    :goto_0
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/tts/play/f$b;->f()Z

    move-result v4

    if-eqz v4, :cond_d

    return-void

    .line 44
    :cond_d
    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/tts/i/b;->d(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    if-eqz v5, :cond_e

    .line 45
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_e

    .line 46
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/tts/i/b;->d(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 47
    :cond_e
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_f

    .line 48
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tts mp3 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/f$b;->a:Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 49
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/f$b;->a:Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;

    invoke-direct {p0, v0, v1, v3}, Lcn/mucang/android/jiakaoyi/framework/tts/play/f$b;->g(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;Z)V

    return-void

    .line 50
    :cond_f
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/tts/play/f$b;->f()Z

    move-result v4

    if-eqz v4, :cond_10

    return-void

    :cond_10
    if-nez v5, :cond_12

    .line 51
    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/tts/i/b;->c(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 52
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_11

    .line 53
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/tts/i/b;->c(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 54
    :cond_11
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_12

    .line 55
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tts aac "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/f$b;->a:Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;->e:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 56
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/f$b;->a:Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;

    invoke-direct {p0, v0, v1, v3}, Lcn/mucang/android/jiakaoyi/framework/tts/play/f$b;->g(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;Z)V

    return-void

    .line 57
    :cond_12
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/tts/play/f$b;->f()Z

    move-result v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v1, :cond_13

    return-void

    .line 58
    :cond_13
    :try_start_5
    new-instance v1, Lcn/mucang/android/jiakaoyi/framework/tts/h/a;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/framework/tts/h/a;-><init>()V

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/f$b;->a:Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;

    invoke-virtual {v1, v0, v4}, Lcn/mucang/android/jiakaoyi/framework/tts/h/a;->m(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;)Lcn/mucang/android/jiakaoyi/framework/tts/models/SynthResultModel;

    move-result-object v1

    if-eqz v1, :cond_17

    .line 59
    iget-object v4, v1, Lcn/mucang/android/jiakaoyi/framework/tts/models/SynthResultModel;->voiceUrl:Ljava/lang/String;

    invoke-static {v4}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 60
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/tts/play/f$b;->f()Z

    move-result v4

    if-eqz v4, :cond_14

    return-void

    .line 61
    :cond_14
    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/framework/tts/models/SynthResultModel;->voiceUrl:Ljava/lang/String;

    if-eqz v5, :cond_15

    const-string v4, ".mp3"

    .line 62
    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 63
    :cond_15
    invoke-static {v1, v0}, Lcn/mucang/android/jiakaoyi/framework/tts/i/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 64
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/tts/play/f$b;->f()Z

    move-result v5

    if-eqz v5, :cond_16

    return-void

    :cond_16
    if-eqz v4, :cond_17

    .line 65
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_17

    .line 66
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "tts server aac "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/f$b;->a:Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;

    iget-object v6, v6, Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;->e:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "; url "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 67
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/f$b;->a:Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;

    invoke-direct {p0, v1, v4, v3}, Lcn/mucang/android/jiakaoyi/framework/tts/play/f$b;->g(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    .line 68
    :try_start_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tts \u670d\u52a1\u5668\u83b7\u53d6\u5931\u8d25 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    const-string v0, "MediaVoiceTag"

    .line 69
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u670d\u52a1\u5668\u83b7\u53d6\u5931\u8d25\uff0c\u7ee7\u7eed\u5f80\u4e0b\u8d70\uff0c\u7528tts\u64ad\u653e:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/mucang/android/core/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    :cond_17
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/tts/play/f$b;->f()Z

    move-result v0

    if-eqz v0, :cond_18

    return-void

    .line 71
    :cond_18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/f$b;->a:Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 72
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/f$b;->a:Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;

    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/framework/tts/play/f$b;->i(Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_1

    :catchall_1
    nop

    .line 73
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/tts/play/f$b;->f()Z

    move-result v0

    if-eqz v0, :cond_19

    return-void

    .line 74
    :cond_19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "failed use tts "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/f$b;->a:Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 75
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/f$b;->a:Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;

    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/framework/tts/play/f$b;->i(Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;)V

    :goto_1
    return-void
.end method
