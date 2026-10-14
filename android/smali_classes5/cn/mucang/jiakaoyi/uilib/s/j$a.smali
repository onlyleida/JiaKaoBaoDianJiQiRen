.class public final Lcn/mucang/jiakaoyi/uilib/s/j$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/jiakaoyi/uilib/q/h$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/jiakaoyi/uilib/s/j;->c(Landroidx/appcompat/app/d;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;ZLkotlin/jvm/b/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0002\u001a\u00020\u0004H\u0016J\u001a\u0010\u0005\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tH\u0016\u00a8\u0006\n"
    }
    d2 = {
        "cn/mucang/jiakaoyi/uilib/utils/ExamSiteUtil$doLoadMap$1$1",
        "Lcn/mucang/jiakaoyi/uilib/mapupdate/UpdateMapHelper$GetMapDataCallback;",
        "progress",
        "",
        "",
        "success",
        "isServerUpdate",
        "",
        "file",
        "Ljava/io/File;",
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
.field final synthetic a:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

.field final synthetic b:Z

.field final synthetic c:Lkotlin/jvm/b/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/b/l<",
            "Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;",
            "Lkotlin/v;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;ZLkotlin/jvm/b/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;",
            "Z",
            "Lkotlin/jvm/b/l<",
            "-",
            "Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;",
            "Lkotlin/v;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/s/j$a;->a:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    iput-boolean p2, p0, Lcn/mucang/jiakaoyi/uilib/s/j$a;->b:Z

    iput-object p3, p0, Lcn/mucang/jiakaoyi/uilib/s/j$a;->c:Lkotlin/jvm/b/l;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic c(Lkotlin/jvm/b/l;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/s/j$a;->d(Lkotlin/jvm/b/l;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;)V

    return-void
.end method

.method private static final d(Lkotlin/jvm/b/l;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;)V
    .locals 1

    const-string v0, "$action"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$model"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p0, p1}, Lkotlin/jvm/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(F)V
    .locals 0

    return-void
.end method

.method public b(ZLjava/io/File;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/s/j$a;->a:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    iget-wide p1, p1, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteId:J

    invoke-static {p1, p2}, Lcn/mucang/jiakaoyi/uilib/q/h;->l(J)Ljava/lang/String;

    move-result-object p1

    .line 2
    iget-object p2, p0, Lcn/mucang/jiakaoyi/uilib/s/j$a;->a:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    iput-object p1, p2, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->mapData:Ljava/lang/String;

    .line 3
    iget-boolean p1, p0, Lcn/mucang/jiakaoyi/uilib/s/j$a;->b:Z

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/s/j$a;->c:Lkotlin/jvm/b/l;

    new-instance v0, Lcn/mucang/jiakaoyi/uilib/s/f;

    invoke-direct {v0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/s/f;-><init>(Lkotlin/jvm/b/l;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;)V

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/s/j$a;->c:Lkotlin/jvm/b/l;

    invoke-interface {p1, p2}, Lkotlin/jvm/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const-string p1, "\u5730\u56fe\u52a0\u8f7d\u5931\u8d25"

    .line 6
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
