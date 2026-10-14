.class final Lcn/mucang/sundial/library/util/AutoTakePhotoHelper$uploadImage$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/sundial/library/util/AutoTakePhotoHelper;->uploadImage(Ljava/io/File;)V
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
.field final synthetic $file:Ljava/io/File;

.field final synthetic this$0:Lcn/mucang/sundial/library/util/AutoTakePhotoHelper;


# direct methods
.method constructor <init>(Lcn/mucang/sundial/library/util/AutoTakePhotoHelper;Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/sundial/library/util/AutoTakePhotoHelper$uploadImage$1;->this$0:Lcn/mucang/sundial/library/util/AutoTakePhotoHelper;

    iput-object p2, p0, Lcn/mucang/sundial/library/util/AutoTakePhotoHelper$uploadImage$1;->$file:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    .line 2
    iget-object v0, p0, Lcn/mucang/sundial/library/util/AutoTakePhotoHelper$uploadImage$1;->this$0:Lcn/mucang/sundial/library/util/AutoTakePhotoHelper;

    iget-object v1, p0, Lcn/mucang/sundial/library/util/AutoTakePhotoHelper$uploadImage$1;->$file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "file.absolutePath"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcn/mucang/sundial/library/util/AutoTakePhotoHelper;->access$createPhotoRecord(Lcn/mucang/sundial/library/util/AutoTakePhotoHelper;Ljava/lang/String;)Lcn/mucang/sundial/android/db/entity/PhotoRecord;

    move-result-object v0

    .line 3
    invoke-static {}, Lcn/mucang/sundial/android/tcp/upload/UploadImageManager;->getInstance()Lcn/mucang/sundial/android/tcp/upload/UploadImageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/mucang/sundial/android/tcp/upload/UploadImageManager;->savePhotoRecord(Lcn/mucang/sundial/android/db/entity/PhotoRecord;)V

    .line 4
    iget-object v1, p0, Lcn/mucang/sundial/library/util/AutoTakePhotoHelper$uploadImage$1;->this$0:Lcn/mucang/sundial/library/util/AutoTakePhotoHelper;

    invoke-static {v1}, Lcn/mucang/sundial/library/util/AutoTakePhotoHelper;->access$getUploadMode$p(Lcn/mucang/sundial/library/util/AutoTakePhotoHelper;)I

    move-result v1

    sget-object v2, Lcn/mucang/sundial/android/tcp/upload/UploadMode;->TMP_SAVE_LOCAL:Lcn/mucang/sundial/android/tcp/upload/UploadMode;

    invoke-virtual {v2}, Lcn/mucang/sundial/android/tcp/upload/UploadMode;->valueOf()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 5
    iget-object v1, p0, Lcn/mucang/sundial/library/util/AutoTakePhotoHelper$uploadImage$1;->this$0:Lcn/mucang/sundial/library/util/AutoTakePhotoHelper;

    invoke-static {v1, v0}, Lcn/mucang/sundial/library/util/AutoTakePhotoHelper;->access$uploadImage(Lcn/mucang/sundial/library/util/AutoTakePhotoHelper;Lcn/mucang/sundial/android/db/entity/PhotoRecord;)V

    .line 6
    :cond_0
    sget-object v0, Lkotlin/v;->a:Lkotlin/v;

    .line 7
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-static {v0}, Lkotlin/k;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method
