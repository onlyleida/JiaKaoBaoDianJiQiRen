.class Lcom/amap/api/mapcore/util/n4$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/mapcore/util/n4;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore/util/n4;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore/util/n4;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/api/mapcore/util/n4$a;->a:Lcom/amap/api/mapcore/util/n4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/amap/api/mapcore/util/n4$a;->a:Lcom/amap/api/mapcore/util/n4;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
