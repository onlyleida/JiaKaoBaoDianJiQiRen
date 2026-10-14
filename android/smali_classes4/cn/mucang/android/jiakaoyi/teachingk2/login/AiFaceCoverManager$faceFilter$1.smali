.class public final Lcn/mucang/android/jiakaoyi/teachingk2/login/AiFaceCoverManager$faceFilter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/jiakaoyi/uilib/login/face/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/login/AiFaceCoverManager;-><clinit>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0008\u0010\u0004\u001a\u00020\u0003H\u0016J\u0008\u0010\u0005\u001a\u00020\u0006H\u0016J\u0008\u0010\u0007\u001a\u00020\u0006H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "cn/mucang/android/jiakaoyi/teachingk2/login/AiFaceCoverManager$faceFilter$1",
        "Lcn/mucang/jiakaoyi/uilib/login/face/IFaceFilter;",
        "filter",
        "",
        "isEnable",
        "start",
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


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 5

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/login/AiFaceCoverManager;->a()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x2bc

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/login/AiFaceCoverManager;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public b()Z
    .locals 1

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/login/AiFaceCoverManager;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/login/AiFaceCoverManager;->c()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public start()V
    .locals 9

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/login/AiFaceCoverManager;->a:Lcn/mucang/android/jiakaoyi/teachingk2/login/AiFaceCoverManager;

    const/4 v0, 0x0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/AiFaceCoverManager;->e(Z)V

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/login/AiFaceCoverManager;->f(J)V

    const-string v0, "\u8bf7\u6c42\u6253\u5f00\u906e\u6321\u68c0\u6d4b"

    .line 3
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->g(Ljava/lang/Object;)V

    .line 4
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/communicate/q;

    const-class v2, Lcn/mucang/android/jiakaoyi/signal/ai/b;

    .line 5
    sget-object v6, Lcn/mucang/android/jiakaoyi/teachingk2/login/AiFaceCoverManager$faceFilter$1$start$1;->INSTANCE:Lcn/mucang/android/jiakaoyi/teachingk2/login/AiFaceCoverManager$faceFilter$1$start$1;

    sget-object v7, Lcn/mucang/android/jiakaoyi/teachingk2/login/AiFaceCoverManager$faceFilter$1$start$2;->INSTANCE:Lcn/mucang/android/jiakaoyi/teachingk2/login/AiFaceCoverManager$faceFilter$1$start$2;

    sget-object v8, Lcn/mucang/android/jiakaoyi/teachingk2/login/AiFaceCoverManager$faceFilter$1$start$3;->INSTANCE:Lcn/mucang/android/jiakaoyi/teachingk2/login/AiFaceCoverManager$faceFilter$1$start$3;

    const/4 v3, 0x3

    const-wide/16 v4, 0x3e8

    move-object v1, v0

    .line 6
    invoke-direct/range {v1 .. v8}, Lcn/mucang/android/jiakaoyi/signal/communicate/q;-><init>(Ljava/lang/Class;IJLkotlin/jvm/b/a;Lkotlin/jvm/b/a;Lkotlin/jvm/b/l;)V

    .line 7
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/q;->i()V

    return-void
.end method

.method public stop()V
    .locals 9

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/login/AiFaceCoverManager;->a:Lcn/mucang/android/jiakaoyi/teachingk2/login/AiFaceCoverManager;

    const/4 v0, 0x0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/AiFaceCoverManager;->d(Z)V

    const-string v0, "\u8bf7\u6c42\u5173\u95ed\u906e\u6321\u68c0\u6d4b"

    .line 2
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->g(Ljava/lang/Object;)V

    .line 3
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/communicate/q;

    const-class v2, Lcn/mucang/android/jiakaoyi/signal/ai/b;

    .line 4
    sget-object v6, Lcn/mucang/android/jiakaoyi/teachingk2/login/AiFaceCoverManager$faceFilter$1$stop$1;->INSTANCE:Lcn/mucang/android/jiakaoyi/teachingk2/login/AiFaceCoverManager$faceFilter$1$stop$1;

    sget-object v7, Lcn/mucang/android/jiakaoyi/teachingk2/login/AiFaceCoverManager$faceFilter$1$stop$2;->INSTANCE:Lcn/mucang/android/jiakaoyi/teachingk2/login/AiFaceCoverManager$faceFilter$1$stop$2;

    sget-object v8, Lcn/mucang/android/jiakaoyi/teachingk2/login/AiFaceCoverManager$faceFilter$1$stop$3;->INSTANCE:Lcn/mucang/android/jiakaoyi/teachingk2/login/AiFaceCoverManager$faceFilter$1$stop$3;

    const/4 v3, 0x3

    const-wide/16 v4, 0x3e8

    move-object v1, v0

    .line 5
    invoke-direct/range {v1 .. v8}, Lcn/mucang/android/jiakaoyi/signal/communicate/q;-><init>(Ljava/lang/Class;IJLkotlin/jvm/b/a;Lkotlin/jvm/b/a;Lkotlin/jvm/b/l;)V

    .line 6
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/q;->i()V

    return-void
.end method
