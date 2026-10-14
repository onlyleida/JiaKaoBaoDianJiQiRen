.class public Lcn/mucang/android/jiakaoyi/mapcollect/collect/a1/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/mapcollect/collect/a1/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData<",
        "TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/e<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final d:Lcn/mucang/android/jiakaoyi/engine/model/Step;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;Lcn/mucang/android/jiakaoyi/engine/model/Step;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcn/mucang/android/jiakaoyi/engine/model/Step;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/a1/a$a;->b:Ljava/lang/Class;

    .line 3
    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/a1/a$a;->d:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    .line 4
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/a1/a$a;->c:Ljava/util/List;

    .line 5
    new-instance p3, Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/e;

    invoke-direct {p3, p1, p2}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/e;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/a1/a$a;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/e;

    return-void
.end method

.method static synthetic a(Lcn/mucang/android/jiakaoyi/mapcollect/collect/a1/a$a;Lcom/alibaba/fastjson/JSONObject;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/a1/a$a;->c(Lcom/alibaba/fastjson/JSONObject;I)V

    return-void
.end method

.method static synthetic b(Lcn/mucang/android/jiakaoyi/mapcollect/collect/a1/a$a;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/a1/a$a;->d()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private c(Lcom/alibaba/fastjson/JSONObject;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/a1/a$a;->d:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    if-eq p2, v0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/a1/a$a;->c:Ljava/util/List;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/a1/a$a;->b:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSON;->toJavaObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u89e3\u6790\u6570\u636e\u5931\u8d25 : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "TAG"

    invoke-static {v0, p2}, Lcn/mucang/android/core/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/a1/a$a;->d:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->zhStepName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ";\u5730\u56fe\u6570\u636e\u8f6c\u5bf9\u8c61\u5931\u8d25\uff1a"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "---"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/a1/a$a;->b:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private d()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/a1/a$a;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/e;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/a1/a$a;->c:Ljava/util/List;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/e;->d(Ljava/util/List;Z)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/a1/a$a;->c:Ljava/util/List;

    return-object v0
.end method
