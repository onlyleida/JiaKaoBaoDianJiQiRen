.class final Lcn/mucang/sundial/library/GlobalEventListeners$register$2$1$onSelect$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/sundial/library/GlobalEventListeners$register$2$1;->onSelect(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0003\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0001\u0010\u0002"
    }
    d2 = {
        "Lkotlin/v;",
        "run",
        "()V",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcn/mucang/sundial/library/GlobalEventListeners$register$2$1;


# direct methods
.method constructor <init>(Lcn/mucang/sundial/library/GlobalEventListeners$register$2$1;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/sundial/library/GlobalEventListeners$register$2$1$onSelect$1;->this$0:Lcn/mucang/sundial/library/GlobalEventListeners$register$2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    const-string v0, "\u5f00\u59cb\u5347\u7ea7"

    .line 1
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "update.apk"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 2
    :try_start_0
    invoke-static {v0, v3, v2, v3}, Lcn/mucang/sundial/library/tts/Tts;->speak$default(Ljava/lang/String;Lcn/mucang/sundial/library/tts/SpeakListener;ILjava/lang/Object;)V

    .line 3
    invoke-static {v0}, Lcn/mucang/sundial/android/log/SundialLog;->normal(Ljava/lang/Object;)V

    .line 4
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-static {v1}, Lcom/blankj/utilcode/util/a;->a(Ljava/io/File;)Lcom/blankj/utilcode/util/a$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0}, Lcom/blankj/utilcode/util/a$a;->c()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/blankj/utilcode/util/a;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Lcom/blankj/utilcode/util/a$a;->e()I

    move-result v0

    .line 7
    invoke-static {}, Lcom/blankj/utilcode/util/a;->d()I

    move-result v4

    if-le v0, v4, :cond_0

    const-string v0, "\u672c\u5730\u5b58\u5728\u540c\u5305\u540d\u66f4\u9ad8\u7248\u672c\u6587\u4ef6\uff0c\u8df3\u8f6c\u5347\u7ea7"

    .line 8
    invoke-static {v0}, Lcn/mucang/sundial/android/log/SundialLog;->normal(Ljava/lang/Object;)V

    .line 9
    invoke-static {v1}, Lcom/blankj/utilcode/util/a;->l(Ljava/io/File;)V

    return-void

    .line 10
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_1
    const-string v0, "\u5f00\u59cb\u4e0b\u8f7d"

    .line 12
    invoke-static {v0}, Lcn/mucang/sundial/android/log/SundialLog;->normal(Ljava/lang/Object;)V

    .line 13
    iget-object v0, p0, Lcn/mucang/sundial/library/GlobalEventListeners$register$2$1$onSelect$1;->this$0:Lcn/mucang/sundial/library/GlobalEventListeners$register$2$1;

    iget-object v0, v0, Lcn/mucang/sundial/library/GlobalEventListeners$register$2$1;->$it:Lcn/mucang/sundial/android/eventbus/event/UpdateEvent;

    invoke-virtual {v0}, Lcn/mucang/sundial/android/eventbus/event/UpdateEvent;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1, v3}, Lcn/mucang/sundial/android/tcp/utils/UtilsKt;->downloadURLToFile(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)J

    const-string v0, "\u4e0b\u8f7d\u5b8c\u6bd5"

    .line 14
    invoke-static {v0}, Lcn/mucang/sundial/android/log/SundialLog;->normal(Ljava/lang/Object;)V

    .line 15
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 16
    invoke-static {v1}, Lcom/blankj/utilcode/util/a;->l(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "\u5347\u7ea7\u5931\u8d25"

    .line 17
    invoke-static {v0}, Lcn/mucang/sundial/android/log/SundialLog;->normal(Ljava/lang/Object;)V

    .line 18
    invoke-static {v0, v3, v2, v3}, Lcn/mucang/sundial/library/tts/Tts;->speak$default(Ljava/lang/String;Lcn/mucang/sundial/library/tts/SpeakListener;ILjava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method
