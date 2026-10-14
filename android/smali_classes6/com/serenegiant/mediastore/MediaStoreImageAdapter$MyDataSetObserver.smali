.class Lcom/serenegiant/mediastore/MediaStoreImageAdapter$MyDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/serenegiant/mediastore/MediaStoreImageAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyDataSetObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/serenegiant/mediastore/MediaStoreImageAdapter;


# direct methods
.method private constructor <init>(Lcom/serenegiant/mediastore/MediaStoreImageAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/serenegiant/mediastore/MediaStoreImageAdapter$MyDataSetObserver;->this$0:Lcom/serenegiant/mediastore/MediaStoreImageAdapter;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/serenegiant/mediastore/MediaStoreImageAdapter$MyDataSetObserver;->this$0:Lcom/serenegiant/mediastore/MediaStoreImageAdapter;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/serenegiant/mediastore/MediaStoreImageAdapter;->mDataValid:Z

    .line 2
    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onInvalidated()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/serenegiant/mediastore/MediaStoreImageAdapter$MyDataSetObserver;->this$0:Lcom/serenegiant/mediastore/MediaStoreImageAdapter;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/serenegiant/mediastore/MediaStoreImageAdapter;->mDataValid:Z

    .line 2
    invoke-virtual {v0}, Lcom/serenegiant/mediastore/MediaStoreImageAdapter;->notifyDataSetInvalidated()V

    return-void
.end method
