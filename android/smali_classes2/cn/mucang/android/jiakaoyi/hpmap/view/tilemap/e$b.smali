.class Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/e$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/e;->o()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/TileItem$TileScale;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/TileItem$TileScale;Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/TileItem$TileScale;)I
    .locals 0

    .line 1
    iget p1, p1, Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/TileItem$TileScale;->scale:I

    iget p2, p2, Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/TileItem$TileScale;->scale:I

    invoke-static {p1, p2}, Ljava/lang/Integer;->compare(II)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/TileItem$TileScale;

    check-cast p2, Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/TileItem$TileScale;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/e$b;->a(Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/TileItem$TileScale;Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/TileItem$TileScale;)I

    move-result p1

    return p1
.end method
