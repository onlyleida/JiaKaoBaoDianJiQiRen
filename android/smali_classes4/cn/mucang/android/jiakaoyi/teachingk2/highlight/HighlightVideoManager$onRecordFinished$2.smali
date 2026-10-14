.class final Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoManager$onRecordFinished$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoManager;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/b/l<",
        "Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;",
        "Lkotlin/v;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;"
    }
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $entity:Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;

.field final synthetic $filePath:Ljava/lang/String;

.field final synthetic $segments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/Segment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/Segment;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoManager$onRecordFinished$2;->$entity:Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoManager$onRecordFinished$2;->$filePath:Ljava/lang/String;

    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoManager$onRecordFinished$2;->$segments:Ljava/util/List;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method public static synthetic a(Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoManager$onRecordFinished$2;->invoke$lambda-0(Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method private static final invoke$lambda-0(Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;Ljava/lang/String;Ljava/util/List;)V
    .locals 13

    const-string v0, "$entity"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$filePath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/login/LoginHelper;->a:Lcn/mucang/android/jiakaoyi/teachingk2/login/LoginHelper;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/LoginHelper;->c()Landroidx/lifecycle/z;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    const/16 v4, 0x19

    if-ge v3, v4, :cond_1

    .line 2
    sget-object v4, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/t;->a:Lcn/mucang/android/jiakaoyi/teachingk2/highlight/t;

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;->getStartTime()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/t;->d(J)Ljava/io/File;

    move-result-object v4

    .line 3
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    const-wide/16 v4, 0x14

    .line 4
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0

    .line 5
    :cond_1
    sget-object v4, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/t;->a:Lcn/mucang/android/jiakaoyi/teachingk2/highlight/t;

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;->getStartTime()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/t;->d(J)Ljava/io/File;

    move-result-object p0

    const v5, 0xff0c

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v10, v6, v8

    if-lez v10, :cond_2

    .line 7
    invoke-virtual {v4, p1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/t;->c(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u7cbe\u5f69\u65f6\u523b\uff1a\u5b66\u5458\u5f55\u50cf\u53ef\u7528\uff0c"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x6

    const/4 v12, 0x0

    move-object v7, p0

    .line 9
    invoke-static/range {v7 .. v12}, Lkotlin/io/g;->j(Ljava/io/File;Ljava/io/File;ZIILjava/lang/Object;)Ljava/io/File;

    .line 10
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 11
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u7cbe\u5f69\u65f6\u523b\uff1a\u5b66\u5458\u5f55\u50cf\u4e0d\u53ef\u7528\uff0c"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 12
    :cond_3
    :goto_1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoManager;->a:Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoManager;

    const-string p0, "segments"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoManager;->p(Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoManager;Ljava/lang/String;Ljava/util/List;Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    .line 13
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/utils/q0;->d(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "\u7cbe\u5f69\u65f6\u523b\uff1a\u89c6\u9891\u5904\u7406\u5f02\u5e38:"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    :goto_2
    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;

    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoManager$onRecordFinished$2;->invoke(Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;)V

    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method

.method public final invoke(Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;)V
    .locals 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoManager$onRecordFinished$2;->$entity:Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoManager$onRecordFinished$2;->$filePath:Ljava/lang/String;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoManager$onRecordFinished$2;->$segments:Ljava/util/List;

    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/n;

    invoke-direct {v2, p1, v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/n;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;Ljava/lang/String;Ljava/util/List;)V

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/utils/n0;->a(Ljava/lang/Runnable;)V

    return-void
.end method
