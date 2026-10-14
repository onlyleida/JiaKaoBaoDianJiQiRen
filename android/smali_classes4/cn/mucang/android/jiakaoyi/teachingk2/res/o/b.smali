.class public final Lcn/mucang/android/jiakaoyi/teachingk2/res/o/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$c;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/res/processor/AutoShuttleProcessor;",
        "Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$ResourceProcessor;",
        "()V",
        "process",
        "",
        "file",
        "Ljava/io/File;",
        "examSiteId",
        "",
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
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string p2, "file"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Lcn/mucang/jiakaoyi/uilib/q/g;->b(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "AutoShuttleProcessor: "

    .line 2
    invoke-static {p2, p1}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 3
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/res/n;->b()Lcn/mucang/android/jiakaoyi/teachingk2/res/n;

    move-result-object p2

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/teachingk2/res/n;->a:Lcn/mucang/android/jiakaoyi/signal/i/a;

    .line 4
    const-class p3, Lcn/mucang/android/jiakaoyi/teachingk2/res/model/AutoShuttleModel;

    invoke-static {p1, p3}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    const-string p3, "list"

    .line 5
    invoke-static {p1, p3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/res/model/AutoShuttleModel;

    .line 7
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/res/model/AutoShuttleModel;->connectionPoint:Ljava/lang/String;

    const-class v2, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-static {v1, v2}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 8
    invoke-interface {p2, v1}, Lcn/mucang/android/jiakaoyi/signal/i/a;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v1

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/res/model/AutoShuttleModel;->pos:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    goto :goto_0

    .line 9
    :cond_0
    sget-object p2, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/r;->a:Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/r;

    invoke-virtual {p2, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/r;->f(Ljava/util/List;)V

    return-void
.end method
