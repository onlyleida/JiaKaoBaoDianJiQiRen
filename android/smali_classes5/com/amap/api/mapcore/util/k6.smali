.class public Lcom/amap/api/mapcore/util/k6;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# instance fields
.field private a:Lcom/amap/api/mapcore/util/g6;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILcom/amap/api/mapcore/util/g6;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 2
    iput-object p5, p0, Lcom/amap/api/mapcore/util/k6;->a:Lcom/amap/api/mapcore/util/g6;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/k6;->a:Lcom/amap/api/mapcore/util/g6;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore/util/g6;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/k6;->a:Lcom/amap/api/mapcore/util/g6;

    invoke-interface {v0, p1, p2, p3}, Lcom/amap/api/mapcore/util/g6;->a(Landroid/database/sqlite/SQLiteDatabase;II)V

    return-void
.end method
