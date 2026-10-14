.class public Lcn/mucang/android/jiakaoyi/signal/ai/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:Lcn/mucang/android/jiakaoyi/signal/ai/AISitPoseResult;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcn/mucang/android/jiakaoyi/signal/ai/a;->a:I

    .line 3
    iput v0, p0, Lcn/mucang/android/jiakaoyi/signal/ai/a;->b:I

    .line 4
    iput v0, p0, Lcn/mucang/android/jiakaoyi/signal/ai/a;->c:I

    .line 5
    iput v0, p0, Lcn/mucang/android/jiakaoyi/signal/ai/a;->d:I

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcn/mucang/android/jiakaoyi/signal/ai/a;->e:I

    return-void
.end method


# virtual methods
.method public A()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/ai/a;->g:Lcn/mucang/android/jiakaoyi/signal/ai/AISitPoseResult;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/ai/AISitPoseResult;->getSitPoseType()I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/ai/a;->g:Lcn/mucang/android/jiakaoyi/signal/ai/AISitPoseResult;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/ai/AISitPoseResult;->getAngle()I

    move-result v0

    const/16 v2, 0xa

    if-le v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public B()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/ai/a;->g:Lcn/mucang/android/jiakaoyi/signal/ai/AISitPoseResult;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/ai/AISitPoseResult;->getSitPoseType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/ai/a;->g:Lcn/mucang/android/jiakaoyi/signal/ai/AISitPoseResult;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/ai/AISitPoseResult;->getAngle()I

    move-result v0

    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public C()Z
    .locals 2

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/signal/ai/a;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public D()Z
    .locals 2

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/signal/ai/a;->b:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public a(Lcn/mucang/android/jiakaoyi/signal/ai/a;)V
    .locals 1

    .line 1
    iget v0, p1, Lcn/mucang/android/jiakaoyi/signal/ai/a;->a:I

    iput v0, p0, Lcn/mucang/android/jiakaoyi/signal/ai/a;->a:I

    .line 2
    iget v0, p1, Lcn/mucang/android/jiakaoyi/signal/ai/a;->b:I

    iput v0, p0, Lcn/mucang/android/jiakaoyi/signal/ai/a;->b:I

    .line 3
    iget v0, p1, Lcn/mucang/android/jiakaoyi/signal/ai/a;->c:I

    iput v0, p0, Lcn/mucang/android/jiakaoyi/signal/ai/a;->c:I

    .line 4
    iget v0, p1, Lcn/mucang/android/jiakaoyi/signal/ai/a;->d:I

    iput v0, p0, Lcn/mucang/android/jiakaoyi/signal/ai/a;->d:I

    .line 5
    iget v0, p1, Lcn/mucang/android/jiakaoyi/signal/ai/a;->e:I

    iput v0, p0, Lcn/mucang/android/jiakaoyi/signal/ai/a;->e:I

    .line 6
    iget v0, p1, Lcn/mucang/android/jiakaoyi/signal/ai/a;->f:I

    iput v0, p0, Lcn/mucang/android/jiakaoyi/signal/ai/a;->f:I

    .line 7
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/signal/ai/a;->g:Lcn/mucang/android/jiakaoyi/signal/ai/AISitPoseResult;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/ai/a;->g:Lcn/mucang/android/jiakaoyi/signal/ai/AISitPoseResult;

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/signal/ai/a;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u65e0\u52a8\u4f5c"

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/signal/ai/a;->n()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "\u75b2\u52b3\u9a7e\u9a76 "

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/signal/ai/a;->C()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "\u62bd\u70df "

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    :cond_2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/signal/ai/a;->m()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "\u559d\u4e1c\u897f "

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    :cond_3
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/signal/ai/a;->w()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "\u6253\u7535\u8bdd "

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/signal/ai/a;->c:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const-string v0, "\u751f\u6c14"

    return-object v0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const-string v0, "\u9ad8\u5174"

    return-object v0

    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    const-string v0, "\u60b2\u4f24"

    return-object v0

    :cond_2
    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    const-string v0, "\u60ca\u8bb6"

    return-object v0

    :cond_3
    if-nez v0, :cond_4

    const-string v0, "\u6b63\u5e38"

    return-object v0

    :cond_4
    const-string v0, "\u672a\u77e5"

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/signal/ai/a;->d:I

    if-eqz v0, :cond_5

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    const-string v0, "\u672a\u77e5"

    return-object v0

    :cond_0
    const-string v0, "\u4f4e\u5934+\u53f3\u6446\u5934"

    return-object v0

    :cond_1
    const-string v0, "\u4f4e\u5934+\u5de6\u6446\u5934"

    return-object v0

    :cond_2
    const-string v0, "\u4f4e\u5934"

    return-object v0

    :cond_3
    const-string v0, "\u53f3\u6446\u5934"

    return-object v0

    :cond_4
    const-string v0, "\u5de6\u6446\u5934"

    return-object v0

    :cond_5
    const-string v0, "\u6b63\u5e38"

    return-object v0
.end method

.method public e()Lcn/mucang/android/jiakaoyi/signal/ai/PartIdentityModule;
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/signal/ai/a;->f:I

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/signal/ai/PartIdentityModule;->getModule(I)Lcn/mucang/android/jiakaoyi/signal/ai/PartIdentityModule;

    move-result-object v0

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/signal/ai/a;->b:I

    if-eqz v0, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    const-string v0, "\u65e0\u52a8\u4f5c"

    return-object v0

    :cond_0
    const-string v0, "\u53cc\u624b\u5f00\u95e8"

    return-object v0

    :cond_1
    const-string v0, "\u5355\u624b\u5f00\u95e8"

    return-object v0

    :cond_2
    const-string v0, "\u53cc\u624b\u8131\u79bb\u65b9\u5411\u76d8"

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/signal/ai/a;->b:I

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const-string v0, "\u65e0\u52a8\u4f5c"

    return-object v0

    :cond_0
    const-string v0, "\u53cc\u624b\u4ea4\u53c9"

    return-object v0

    :cond_1
    const-string v0, "\u53cc\u624b\u6b63\u5e38"

    return-object v0

    :cond_2
    const-string v0, "\u5355\u53f3\u624b"

    return-object v0

    :cond_3
    const-string v0, "\u5355\u5de6\u624b"

    return-object v0

    :cond_4
    const-string v0, "\u53cc\u624b\u8131\u79bb\u65b9\u5411\u76d8"

    return-object v0
.end method

.method public h()Z
    .locals 2

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/signal/ai/a;->c:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public i()Z
    .locals 2

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/signal/ai/a;->c:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public j()Z
    .locals 2

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/signal/ai/a;->d:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public k()Z
    .locals 2

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/signal/ai/a;->d:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public l()Z
    .locals 2

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/signal/ai/a;->d:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public m()Z
    .locals 2

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/signal/ai/a;->a:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public n()Z
    .locals 2

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/signal/ai/a;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public o()Z
    .locals 2

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/signal/ai/a;->b:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public p()Z
    .locals 2

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/signal/ai/a;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public q()Z
    .locals 2

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/signal/ai/a;->b:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public r()Z
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/signal/ai/a;->b:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public s()Z
    .locals 2

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/signal/ai/a;->c:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public t()Z
    .locals 2

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/signal/ai/a;->d:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public u()Z
    .locals 2

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/signal/ai/a;->d:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public v()Z
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/signal/ai/a;->a:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public w()Z
    .locals 2

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/signal/ai/a;->a:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public x()Z
    .locals 2

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/signal/ai/a;->c:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public y()Z
    .locals 2

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/signal/ai/a;->b:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public z()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/ai/a;->g:Lcn/mucang/android/jiakaoyi/signal/ai/AISitPoseResult;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/ai/AISitPoseResult;->getSitPoseType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
