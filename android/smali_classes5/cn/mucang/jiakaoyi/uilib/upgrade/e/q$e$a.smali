.class Lcn/mucang/jiakaoyi/uilib/upgrade/e/q$e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/jiakaoyi/uilib/upgrade/e/q$e;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/jiakaoyi/uilib/model/RemoteValueModel;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcn/mucang/jiakaoyi/uilib/upgrade/e/q$e;Lcn/mucang/jiakaoyi/uilib/model/RemoteValueModel;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcn/mucang/jiakaoyi/uilib/upgrade/e/q$e$a;->a:Lcn/mucang/jiakaoyi/uilib/model/RemoteValueModel;

    iput-object p3, p0, Lcn/mucang/jiakaoyi/uilib/upgrade/e/q$e$a;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/upgrade/e/q$e$a;->a:Lcn/mucang/jiakaoyi/uilib/model/RemoteValueModel;

    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/model/RemoteValueModel;->getDesc()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/upgrade/e/q$e$a;->a:Lcn/mucang/jiakaoyi/uilib/model/RemoteValueModel;

    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/model/RemoteValueModel;->getDesc()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "\u89e3\u51b3\u4e00\u4e9b\u95ee\u9898"

    :goto_0
    move-object v6, v0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5f53\u524d\u7248\u672c\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/mucang/android/core/utils/p;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/upgrade/e/q$e$a;->a:Lcn/mucang/jiakaoyi/uilib/model/RemoteValueModel;

    invoke-virtual {v1}, Lcn/mucang/jiakaoyi/uilib/model/RemoteValueModel;->getVersion()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 5
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/upgrade/e/q$e$a;->a:Lcn/mucang/jiakaoyi/uilib/model/RemoteValueModel;

    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/model/RemoteValueModel;->getVersion()Ljava/lang/String;

    move-result-object v0

    :cond_1
    move-object v5, v0

    .line 6
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/upgrade/e/q$e$a;->a:Lcn/mucang/jiakaoyi/uilib/model/RemoteValueModel;

    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/model/RemoteValueModel;->getValue()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcn/mucang/jiakaoyi/uilib/upgrade/e/q$e$a;->b:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v4, "\u66f4\u65b0\u5185\u6d4b"

    const-string v7, "\u53d6\u6d88"

    invoke-static/range {v1 .. v9}, Lcn/mucang/jiakaoyi/uilib/upgrade/e/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/h/b;I)V

    return-void
.end method
