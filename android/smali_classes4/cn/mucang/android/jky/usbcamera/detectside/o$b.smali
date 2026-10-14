.class Lcn/mucang/android/jky/usbcamera/detectside/o$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jky/usbcamera/detectside/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field a:J

.field b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jky/usbcamera/detectside/q;",
            ">;"
        }
    .end annotation
.end field

.field c:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(JLjava/util/List;Landroid/graphics/Bitmap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Lcn/mucang/android/jky/usbcamera/detectside/q;",
            ">;",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lcn/mucang/android/jky/usbcamera/detectside/o$b;->a:J

    .line 3
    iput-object p3, p0, Lcn/mucang/android/jky/usbcamera/detectside/o$b;->b:Ljava/util/List;

    .line 4
    iput-object p4, p0, Lcn/mucang/android/jky/usbcamera/detectside/o$b;->c:Landroid/graphics/Bitmap;

    return-void
.end method
