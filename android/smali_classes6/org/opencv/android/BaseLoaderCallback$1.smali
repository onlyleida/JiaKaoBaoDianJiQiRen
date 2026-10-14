.class Lorg/opencv/android/BaseLoaderCallback$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/opencv/android/BaseLoaderCallback;->onManagerConnected(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/opencv/android/BaseLoaderCallback;


# direct methods
.method constructor <init>(Lorg/opencv/android/BaseLoaderCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/opencv/android/BaseLoaderCallback$1;->this$0:Lorg/opencv/android/BaseLoaderCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lorg/opencv/android/BaseLoaderCallback$1;->this$0:Lorg/opencv/android/BaseLoaderCallback;

    invoke-virtual {p1}, Lorg/opencv/android/BaseLoaderCallback;->finish()V

    return-void
.end method
