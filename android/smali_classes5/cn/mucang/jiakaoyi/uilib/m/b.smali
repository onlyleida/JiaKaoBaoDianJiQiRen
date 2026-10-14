.class public Lcn/mucang/jiakaoyi/uilib/m/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:J

.field private static final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcn/mucang/jiakaoyi/uilib/m/b;->b:Ljava/util/List;

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcn/mucang/jiakaoyi/uilib/m/b;->c:Ljava/util/Map;

    return-void
.end method

.method private static a([Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    array-length v0, p0

    if-ge p1, v0, :cond_3

    .line 2
    aget-object v0, p0, p1

    if-eqz v0, :cond_1

    const-string v1, "null"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "NULL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move-object p2, v0

    goto :goto_2

    .line 4
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 5
    array-length v1, p0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    .line 6
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    const/4 p0, 0x1

    if-eq p1, p0, :cond_3

    .line 7
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u89c4\u5219\u6570\u636e\u89e3\u6790\u9519\u8bef\uff0c\u7d22\u5f15\u53f7\u662f:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\uff0c\u6570\u636e\u662f : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    :cond_3
    :goto_2
    return-object p2
.end method

.method private static b(Lcn/mucang/android/jiakaoyi/engine/model/KeMu;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/engine/model/KeMu;",
            ")",
            "Ljava/util/List<",
            "Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcn/mucang/jiakaoyi/uilib/m/b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;

    if-eqz p0, :cond_2

    .line 4
    invoke-virtual {v2}, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->getStepId()I

    move-result v3

    iget v4, p0, Lcn/mucang/android/jiakaoyi/engine/model/KeMu;->min:I

    if-lt v3, v4, :cond_1

    invoke-virtual {v2}, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->getStepId()I

    move-result v3

    iget v4, p0, Lcn/mucang/android/jiakaoyi/engine/model/KeMu;->max:I

    if-gt v3, v4, :cond_1

    .line 5
    :cond_2
    new-instance v3, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;

    invoke-direct {v3}, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;-><init>()V

    const/4 v4, 0x1

    .line 6
    invoke-virtual {v3, v2, v4}, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->copy(Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;Z)V

    .line 7
    invoke-virtual {v2}, Lcn/mucang/android/core/db/IdEntity;->getId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcn/mucang/android/core/db/IdEntity;->setId(Ljava/lang/Long;)V

    .line 8
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method private static c(Landroid/database/Cursor;)Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;
    .locals 4

    .line 1
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;

    invoke-direct {v0}, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;-><init>()V

    const-string v1, "_id"

    .line 2
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/mucang/android/core/db/IdEntity;->setId(Ljava/lang/Long;)V

    const-string v1, "deduct_ids"

    .line 3
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->setDeductIds(Ljava/lang/String;)V

    const-string v1, "max_value"

    .line 4
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->setMaxValue(I)V

    const-string v1, "max_value2"

    .line 5
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->setMaxValue2(I)V

    const-string v1, "min_value"

    .line 6
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->setMinValue(I)V

    const-string v1, "min_value2"

    .line 7
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->setMinValue2(I)V

    const-string v1, "exam_site_id"

    .line 8
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->setExamSiteId(J)V

    const-string v1, "options"

    .line 9
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->setOptions(Ljava/lang/String;)V

    const-string v1, "name"

    .line 10
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->setName(Ljava/lang/String;)V

    const-string v1, "rule_id"

    .line 11
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->setRuleId(I)V

    const-string v1, "step_id"

    .line 12
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->setStepId(I)V

    const-string v1, "user_id"

    .line 13
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->setUserId(Ljava/lang/String;)V

    const-string v1, "value"

    .line 14
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->setValue(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->getValue()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "0"

    .line 16
    invoke-virtual {v0, v1}, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->setValue(Ljava/lang/String;)V

    :cond_0
    const-string v1, "value2"

    .line 17
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->setValue2(I)V

    const-string v1, "value_type"

    .line 18
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->setValueType(I)V

    const-string v1, "area_code"

    .line 19
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->setAreaCode(Ljava/lang/String;)V

    const-string v1, "allow_user_set"

    .line 20
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->setAllowUserSet(Z)V

    const-string v1, "had_set_by_user"

    .line 21
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v3, :cond_2

    const/4 v2, 0x1

    :cond_2
    invoke-virtual {v0, v2}, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->setHadSetByUser(Z)V

    const-string v1, "position"

    .line 22
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->setPosition(I)V

    const-string v1, "level"

    .line 23
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    invoke-virtual {v0, p0}, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->setLevel(I)V

    return-object v0
.end method

.method private static d(Ljava/util/List;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;",
            ">;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v0}, Lcn/mucang/android/core/db/IdEntity;->getId()Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    const-string v0, "t_rule_config"

    const-string v2, "_id=?"

    invoke-virtual {p1, v0, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static e(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "\u9ed8\u8ba4\u66ff\u6362"

    .line 3
    invoke-static {v0, p0}, Lcn/mucang/android/core/utils/t;->c(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private static f(Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;)Landroid/content/ContentValues;
    .locals 3

    .line 1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/core/db/IdEntity;->getId()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcn/mucang/android/core/db/IdEntity;->getId()Ljava/lang/Long;

    move-result-object v1

    const-string v2, "_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->getDeductIds()Ljava/lang/String;

    move-result-object v1

    const-string v2, "deduct_ids"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->getMaxValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "max_value"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 6
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->getMaxValue2()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "max_value2"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 7
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->getMinValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "min_value"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 8
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->getMinValue2()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "min_value2"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 9
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->getExamSiteId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "exam_site_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 10
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->getOptions()Ljava/lang/String;

    move-result-object v1

    const-string v2, "options"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "name"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->getRuleId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "rule_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 13
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->getStepId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "step_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 14
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->getUserId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "user_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "value"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->getValue2()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "value2"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 17
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->getValueType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "value_type"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 18
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->getAreaCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "area_code"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->isAllowUserSet()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "allow_user_set"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 20
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->isHadSetByUser()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "had_set_by_user"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 21
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->getPosition()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "position"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 22
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->getLevel()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v1, "level"

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method

.method private static g(J)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->k()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/utils/l0;->a:Lcn/mucang/android/jiakaoyi/framework/utils/l0;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/l0;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Lcn/mucang/jiakaoyi/uilib/ui/login/j/a;->c()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    .line 4
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v3, v1

    aput-object v0, v3, v2

    const-string p0, "select * from t_rule_config where exam_site_id=? and user_id=? order by position"

    .line 5
    invoke-static {p0, v3}, Lcn/mucang/jiakaoyi/uilib/m/b;->n(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    new-array v0, v2, [Ljava/lang/String;

    .line 6
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v1

    const-string p0, "select * from t_rule_config where exam_site_id=? order by position"

    .line 7
    invoke-static {p0, v0}, Lcn/mucang/jiakaoyi/uilib/m/b;->n(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static h(Lcn/mucang/android/jiakaoyi/engine/model/KeMu;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/engine/model/KeMu;",
            ")",
            "Ljava/util/List<",
            "Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcn/mucang/jiakaoyi/uilib/m/b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 2
    invoke-static {p0}, Lcn/mucang/jiakaoyi/uilib/m/b;->b(Lcn/mucang/android/jiakaoyi/engine/model/KeMu;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-wide/16 v3, -0x3e7

    .line 3
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "select * from t_rule_config where exam_site_id=?  order by position"

    invoke-static {v2, v1}, Lcn/mucang/jiakaoyi/uilib/m/b;->n(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 4
    invoke-static {v1}, Lcn/mucang/android/core/utils/g;->d(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 6
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 7
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;

    .line 8
    sget-object v2, Lcn/mucang/jiakaoyi/uilib/m/b;->c:Ljava/util/Map;

    invoke-virtual {v1}, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->getRuleId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const-string v0, "rule : \u672c\u5730\u57fa\u7840\u6570\u636e\u83b7\u53d6\u4e3a\u7a7a!!!!!"

    .line 9
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 10
    :cond_2
    invoke-static {p0}, Lcn/mucang/jiakaoyi/uilib/m/b;->b(Lcn/mucang/android/jiakaoyi/engine/model/KeMu;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static i(JLcn/mucang/android/jiakaoyi/engine/model/KeMu;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcn/mucang/android/jiakaoyi/engine/model/KeMu;",
            ")",
            "Ljava/util/List<",
            "Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->k()Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_2

    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/utils/l0;->a:Lcn/mucang/android/jiakaoyi/framework/utils/l0;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/l0;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Lcn/mucang/jiakaoyi/uilib/ui/login/j/a;->c()Ljava/lang/String;

    move-result-object p2

    .line 3
    invoke-static {p2}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    new-array v0, v1, [Ljava/lang/String;

    .line 4
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v3

    aput-object p2, v0, v2

    const-string p0, "select * from t_rule_config where exam_site_id=? and user_id=? order by position"

    invoke-static {p0, v0}, Lcn/mucang/jiakaoyi/uilib/m/b;->n(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    .line 5
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v3

    iget p0, p2, Lcn/mucang/android/jiakaoyi/engine/model/KeMu;->max:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v2

    iget p0, p2, Lcn/mucang/android/jiakaoyi/engine/model/KeMu;->min:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v1

    const-string p0, "select * from t_rule_config where exam_site_id=? and step_id <= ? and step_id >= ? order by position"

    .line 6
    invoke-static {p0, v0}, Lcn/mucang/jiakaoyi/uilib/m/b;->n(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static j(JLjava/lang/String;)Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;
    .locals 8

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/consts/a;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->k()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-nez v1, :cond_2

    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/utils/l0;->a:Lcn/mucang/android/jiakaoyi/framework/utils/l0;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/l0;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lcn/mucang/jiakaoyi/uilib/ui/login/j/a;->c()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-static {v1}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 5
    monitor-exit v0

    return-object v2

    :cond_1
    const-string v6, "select * from t_rule_config where exam_site_id=? and user_id=? and rule_id=? order by position"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/String;

    .line 6
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v7, v5

    aput-object v1, v7, v3

    aput-object p2, v7, v4

    .line 7
    invoke-static {v6, v7}, Lcn/mucang/jiakaoyi/uilib/m/b;->n(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    goto :goto_1

    :cond_2
    :goto_0
    const-string v1, "select * from t_rule_config where exam_site_id=? and rule_id=? order by position"

    new-array v6, v4, [Ljava/lang/String;

    .line 8
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v6, v5

    aput-object p2, v6, v3

    .line 9
    invoke-static {v1, v6}, Lcn/mucang/jiakaoyi/uilib/m/b;->n(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    :goto_1
    if-eqz p0, :cond_3

    .line 10
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_3
    const-string p0, "select * from t_rule_config where exam_site_id=? and rule_id=? order by position"

    new-array p1, v4, [Ljava/lang/String;

    const/16 v1, -0x3e7

    .line 11
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v5

    aput-object p2, p1, v3

    .line 12
    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/m/b;->n(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    .line 13
    :cond_4
    invoke-static {p0}, Lcn/mucang/jiakaoyi/uilib/m/b;->v(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    .line 14
    invoke-static {p0}, Lcn/mucang/android/core/utils/g;->d(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 15
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;

    monitor-exit v0

    return-object p0

    .line 16
    :cond_5
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p0

    .line 17
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static k(JLcn/mucang/android/jiakaoyi/engine/model/KeMu;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcn/mucang/android/jiakaoyi/engine/model/KeMu;",
            ")",
            "Ljava/util/List<",
            "Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/consts/a;->a:Ljava/lang/Object;

    monitor-enter v0

    const-wide/16 v1, -0x3e7

    cmp-long v3, p0, v1

    if-nez v3, :cond_0

    .line 2
    :try_start_0
    invoke-static {p2}, Lcn/mucang/jiakaoyi/uilib/m/b;->h(Lcn/mucang/android/jiakaoyi/engine/model/KeMu;)Ljava/util/List;

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 3
    :cond_0
    invoke-static {}, Lcn/mucang/jiakaoyi/uilib/ui/login/j/a;->b()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->k()Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/utils/l0;->a:Lcn/mucang/android/jiakaoyi/framework/utils/l0;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/l0;->a()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 p0, 0x0

    .line 4
    monitor-exit v0

    return-object p0

    .line 5
    :cond_1
    invoke-static {p2}, Lcn/mucang/jiakaoyi/uilib/m/b;->h(Lcn/mucang/android/jiakaoyi/engine/model/KeMu;)Ljava/util/List;

    move-result-object p2

    .line 6
    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/m/b;->g(J)Ljava/util/List;

    move-result-object v1

    .line 7
    invoke-static {p2, v1}, Lcn/mucang/jiakaoyi/uilib/m/b;->o(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    invoke-static {p2, p0, p1}, Lcn/mucang/jiakaoyi/uilib/m/b;->y(Ljava/util/List;J)Ljava/util/List;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static l(JLcn/mucang/android/jiakaoyi/engine/model/KeMu;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcn/mucang/android/jiakaoyi/engine/model/KeMu;",
            ")",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/consts/a;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-static {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/m/b;->k(JLcn/mucang/android/jiakaoyi/engine/model/KeMu;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcn/mucang/jiakaoyi/uilib/m/b;->v(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static m(Ljava/util/List;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;",
            ">;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;

    const/4 v1, 0x0

    .line 3
    invoke-static {v0}, Lcn/mucang/jiakaoyi/uilib/m/b;->f(Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;)Landroid/content/ContentValues;

    move-result-object v0

    const-string v2, "t_rule_config"

    invoke-virtual {p1, v2, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static varargs n(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/f/a;->b()Landroid/database/sqlite/SQLiteOpenHelper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 2
    :try_start_1
    invoke-virtual {v1, p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3
    :try_start_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 4
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 5
    invoke-static {v2}, Lcn/mucang/jiakaoyi/uilib/m/b;->c(Landroid/database/Cursor;)Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    .line 6
    invoke-static {v2}, Lcn/mucang/android/core/utils/j;->b(Landroid/database/Cursor;)V

    :cond_1
    if-eqz v1, :cond_2

    .line 7
    invoke-static {v1}, Lcn/mucang/android/core/utils/j;->c(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_2
    return-object v3

    :catchall_0
    move-exception v3

    goto :goto_1

    :catchall_1
    move-exception v3

    move-object v2, v0

    goto :goto_1

    :catchall_2
    move-exception v3

    move-object v1, v0

    move-object v2, v1

    .line 8
    :goto_1
    :try_start_3
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "listRules \u62a5\u9519, sql = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " , param = "

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " , error = "

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-eqz v2, :cond_3

    .line 10
    invoke-static {v2}, Lcn/mucang/android/core/utils/j;->b(Landroid/database/Cursor;)V

    :cond_3
    if-eqz v1, :cond_4

    .line 11
    invoke-static {v1}, Lcn/mucang/android/core/utils/j;->c(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_4
    return-object v0

    :catchall_3
    move-exception p0

    if-eqz v2, :cond_5

    .line 12
    invoke-static {v2}, Lcn/mucang/android/core/utils/j;->b(Landroid/database/Cursor;)V

    :cond_5
    if-eqz v1, :cond_6

    .line 13
    invoke-static {v1}, Lcn/mucang/android/core/utils/j;->c(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_6
    throw p0
.end method

.method private static o(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;",
            ">;",
            "Ljava/util/List<",
            "Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;",
            ">;)",
            "Ljava/util/List<",
            "Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-static {p1}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p0

    .line 3
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    invoke-static {p1}, Lcn/mucang/android/core/utils/g;->d(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;

    .line 6
    invoke-virtual {v1}, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->getRuleId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 7
    :cond_2
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;

    .line 8
    invoke-virtual {v1}, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->getRuleId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;

    if-eqz v2, :cond_3

    .line 9
    invoke-virtual {v1, v2}, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->copy(Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;)V

    goto :goto_1

    :cond_4
    return-object p0
.end method

.method private static p([Ljava/lang/String;)Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;
    .locals 6

    .line 1
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;

    invoke-direct {v0}, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;-><init>()V

    const-wide/16 v1, -0x3e7

    .line 2
    invoke-virtual {v0, v1, v2}, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->setExamSiteId(J)V

    const/4 v1, 0x0

    const-string v2, "3"

    .line 3
    invoke-static {p0, v1, v2}, Lcn/mucang/jiakaoyi/uilib/m/b;->a([Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_Global:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v3, v3, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    invoke-static {v2, v3}, Lcn/mucang/jiakaoyi/uilib/m/b;->q(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->setStepId(I)V

    const/4 v2, 0x1

    const-string v3, ""

    .line 4
    invoke-static {p0, v2, v3}, Lcn/mucang/jiakaoyi/uilib/m/b;->a([Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->setDeductIds(Ljava/lang/String;)V

    const/4 v3, 0x2

    const-string v4, "0"

    .line 5
    invoke-static {p0, v3, v4}, Lcn/mucang/jiakaoyi/uilib/m/b;->a([Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Lcn/mucang/jiakaoyi/uilib/m/b;->q(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->setRuleId(I)V

    const/4 v3, 0x3

    const-string v5, "1"

    .line 6
    invoke-static {p0, v3, v5}, Lcn/mucang/jiakaoyi/uilib/m/b;->a([Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lcn/mucang/jiakaoyi/uilib/m/b;->q(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->setValueType(I)V

    const/4 v2, 0x4

    const-string v3, "true"

    .line 7
    invoke-static {p0, v2, v3}, Lcn/mucang/jiakaoyi/uilib/m/b;->a([Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->setAllowUserSet(Z)V

    const/4 v2, 0x5

    const-string v3, "defaultName"

    .line 8
    invoke-static {p0, v2, v3}, Lcn/mucang/jiakaoyi/uilib/m/b;->a([Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->setName(Ljava/lang/String;)V

    const/4 v2, 0x6

    .line 9
    invoke-static {p0, v2, v4}, Lcn/mucang/jiakaoyi/uilib/m/b;->a([Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->setValue(Ljava/lang/String;)V

    const/4 v2, 0x7

    .line 10
    invoke-static {p0, v2, v4}, Lcn/mucang/jiakaoyi/uilib/m/b;->a([Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcn/mucang/jiakaoyi/uilib/m/b;->q(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->setValue2(I)V

    const/16 v2, 0x8

    .line 11
    invoke-static {p0, v2, v4}, Lcn/mucang/jiakaoyi/uilib/m/b;->a([Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcn/mucang/jiakaoyi/uilib/m/b;->q(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->setMinValue(I)V

    const/16 v2, 0x9

    const-string v3, "100"

    .line 12
    invoke-static {p0, v2, v3}, Lcn/mucang/jiakaoyi/uilib/m/b;->a([Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcn/mucang/jiakaoyi/uilib/m/b;->q(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->setMaxValue(I)V

    const/16 v2, 0xa

    .line 13
    invoke-static {p0, v2, v4}, Lcn/mucang/jiakaoyi/uilib/m/b;->a([Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcn/mucang/jiakaoyi/uilib/m/b;->q(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->setMinValue2(I)V

    const/16 v2, 0xb

    .line 14
    invoke-static {p0, v2, v4}, Lcn/mucang/jiakaoyi/uilib/m/b;->a([Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcn/mucang/jiakaoyi/uilib/m/b;->q(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->setMaxValue2(I)V

    const/16 v2, 0xc

    .line 15
    invoke-static {p0, v2, v4}, Lcn/mucang/jiakaoyi/uilib/m/b;->a([Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->setOptions(Ljava/lang/String;)V

    const/16 v2, 0xd

    .line 16
    invoke-static {p0, v2, v4}, Lcn/mucang/jiakaoyi/uilib/m/b;->a([Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1}, Lcn/mucang/jiakaoyi/uilib/m/b;->q(Ljava/lang/String;I)I

    move-result p0

    invoke-virtual {v0, p0}, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->setLevel(I)V

    return-object v0
.end method

.method private static q(Ljava/lang/String;I)I
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    return p1
.end method

.method private static r(Lcn/mucang/android/jiakaoyi/engine/model/KeMu;Z)Z
    .locals 10

    const-string v0, "RuleConfigDataManager"

    .line 1
    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/KeMu;->K3:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    if-ne p0, v1, :cond_0

    .line 2
    sget v1, Lcn/mucang/android/jiakaoyi/framework/f/a;->b:I

    goto :goto_0

    .line 3
    :cond_0
    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/KeMu;->K2:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    if-ne p0, v1, :cond_1

    .line 4
    sget v1, Lcn/mucang/android/jiakaoyi/framework/f/a;->c:I

    goto :goto_0

    .line 5
    :cond_1
    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/KeMu;->Moto:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    if-ne p0, v1, :cond_2

    .line 6
    sget v1, Lcn/mucang/android/jiakaoyi/framework/f/a;->e:I

    goto :goto_0

    .line 7
    :cond_2
    sget v1, Lcn/mucang/android/jiakaoyi/framework/f/a;->d:I

    :goto_0
    const/4 v2, 0x1

    if-gtz v1, :cond_3

    return v2

    .line 8
    :cond_3
    invoke-static {p0}, Lcn/mucang/jiakaoyi/uilib/m/b;->x(Lcn/mucang/android/jiakaoyi/engine/model/KeMu;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    invoke-static {v3, v4}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->d(Ljava/lang/String;I)I

    move-result v3

    .line 9
    invoke-static {p0}, Lcn/mucang/jiakaoyi/uilib/m/b;->h(Lcn/mucang/android/jiakaoyi/engine/model/KeMu;)Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result v4

    const-string v5, ",kemu="

    const-string v6, ",\u672c\u5730version="

    if-ne v3, v1, :cond_4

    if-nez v4, :cond_4

    .line 10
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "rule : \u5df2\u7ecf\u4fdd\u5b58\u8fc7\u5168\u56fd\u6570\u636e,version="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/engine/model/KeMu;->name:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    return v2

    :cond_4
    if-eqz v4, :cond_5

    .line 11
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "rule : \u6570\u636e\u5e93\u53d1\u751f\u9519\u8bef\uff0c\u91cd\u65b0\u5199\u5165\u57fa\u7840\u6570\u636e,version="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/engine/model/KeMu;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    :cond_5
    const/4 v4, 0x0

    .line 12
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 13
    invoke-static {p0, v1}, Lcn/mucang/jiakaoyi/uilib/m/b;->t(Lcn/mucang/android/jiakaoyi/engine/model/KeMu;I)V

    .line 14
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u7b2c\u4e00\u6b21\u4fdd\u5b58\u89c4\u5219\u6570\u636e\u7684\u65f6\u95f4:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v5

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    invoke-static {p0}, Lcn/mucang/jiakaoyi/uilib/m/b;->x(Lcn/mucang/android/jiakaoyi/engine/model/KeMu;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v1}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->k(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    nop

    if-eqz p1, :cond_6

    const-wide/16 v0, 0xc8

    .line 16
    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 17
    invoke-static {p0, v4}, Lcn/mucang/jiakaoyi/uilib/m/b;->r(Lcn/mucang/android/jiakaoyi/engine/model/KeMu;Z)Z

    goto :goto_1

    :catch_1
    move-exception p1

    .line 18
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ruleConfig\u6570\u636e\u521d\u59cb\u5316\u5931\u8d25,version:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " kemu:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " RequestVersion:"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " , error="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 19
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 20
    invoke-static {v0, p0}, Lcn/mucang/android/core/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_1
    return v4
.end method

.method public static s()Z
    .locals 6

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/consts/a;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-wide v3, Lcn/mucang/jiakaoyi/uilib/m/b;->a:J

    sub-long/2addr v1, v3

    const-wide/32 v3, 0x493e0

    cmp-long v5, v1, v3

    if-gez v5, :cond_0

    const/4 v1, 0x0

    .line 3
    monitor-exit v0

    return v1

    .line 4
    :cond_0
    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/KeMu;->K2:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcn/mucang/jiakaoyi/uilib/m/b;->r(Lcn/mucang/android/jiakaoyi/engine/model/KeMu;Z)Z

    move-result v1

    .line 5
    sget-object v3, Lcn/mucang/android/jiakaoyi/engine/model/KeMu;->K3:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    invoke-static {v3, v2}, Lcn/mucang/jiakaoyi/uilib/m/b;->r(Lcn/mucang/android/jiakaoyi/engine/model/KeMu;Z)Z

    move-result v3

    .line 6
    sget-object v4, Lcn/mucang/android/jiakaoyi/engine/model/KeMu;->B2:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    invoke-static {v4, v2}, Lcn/mucang/jiakaoyi/uilib/m/b;->r(Lcn/mucang/android/jiakaoyi/engine/model/KeMu;Z)Z

    move-result v4

    .line 7
    sget-object v5, Lcn/mucang/android/jiakaoyi/engine/model/KeMu;->Moto:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    invoke-static {v5, v2}, Lcn/mucang/jiakaoyi/uilib/m/b;->r(Lcn/mucang/android/jiakaoyi/engine/model/KeMu;Z)Z

    move-result v5

    if-eqz v1, :cond_1

    if-eqz v3, :cond_1

    if-eqz v4, :cond_1

    if-eqz v5, :cond_1

    const/4 v1, 0x0

    .line 8
    invoke-static {v1}, Lcn/mucang/jiakaoyi/uilib/m/b;->h(Lcn/mucang/android/jiakaoyi/engine/model/KeMu;)Ljava/util/List;

    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sput-wide v3, Lcn/mucang/jiakaoyi/uilib/m/b;->a:J

    .line 10
    monitor-exit v0

    return v2

    .line 11
    :cond_1
    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static t(Lcn/mucang/android/jiakaoyi/engine/model/KeMu;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/engine/model/KeMu;->dir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/sdata/rv_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ".data"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "\u5f00\u59cb\u8bfb\u53d6\u5185\u7f6e \u5168\u56fd\u89c4\u5219\u6570\u636e"

    .line 2
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 3
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    const/4 v0, 0x0

    .line 5
    :try_start_0
    invoke-static {p1}, Lcn/mucang/jiakaoyi/uilib/m/c;->a(Ljava/io/InputStream;)[B

    move-result-object v1

    const/4 v2, 0x0

    .line 6
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 7
    aget-byte v3, v1, v2

    xor-int/lit8 v3, v3, 0x67

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8
    :cond_0
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 9
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 10
    :try_start_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 11
    :goto_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    const-string v5, "%_%"

    .line 12
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v5

    const-string v6, "RuleConfigDataManager"

    .line 13
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " , "

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lcn/mucang/jiakaoyi/uilib/m/b;->p([Ljava/lang/String;)Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcn/mucang/android/core/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    invoke-static {v5}, Lcn/mucang/jiakaoyi/uilib/m/b;->p([Ljava/lang/String;)Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 15
    :cond_1
    invoke-static {p0}, Lcn/mucang/jiakaoyi/uilib/m/b;->h(Lcn/mucang/android/jiakaoyi/engine/model/KeMu;)Ljava/util/List;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 16
    :try_start_3
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/f/a;->b()Landroid/database/sqlite/SQLiteOpenHelper;

    move-result-object v4

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 17
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 18
    invoke-static {p0, v0}, Lcn/mucang/jiakaoyi/uilib/m/b;->d(Ljava/util/List;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 19
    invoke-static {v3, v0}, Lcn/mucang/jiakaoyi/uilib/m/b;->m(Ljava/util/List;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 20
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 21
    sget-object p0, Lcn/mucang/jiakaoyi/uilib/m/b;->b:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 22
    :try_start_4
    invoke-static {v0}, Lcn/mucang/jiakaoyi/uilib/m/b;->e(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 23
    invoke-static {v0}, Lcn/mucang/android/core/utils/j;->c(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 24
    invoke-static {p1}, Lcn/mucang/android/core/utils/o;->a(Ljava/io/Closeable;)V

    .line 25
    invoke-static {v1}, Lcn/mucang/android/core/utils/o;->a(Ljava/io/Closeable;)V

    .line 26
    invoke-static {v2}, Lcn/mucang/android/core/utils/o;->a(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception p0

    .line 27
    :try_start_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ruleConfig syncGlobalVersionData , error = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 28
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p0

    .line 29
    :try_start_6
    invoke-static {v0}, Lcn/mucang/jiakaoyi/uilib/m/b;->e(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 30
    invoke-static {v0}, Lcn/mucang/android/core/utils/j;->c(Landroid/database/sqlite/SQLiteDatabase;)V

    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception p0

    move-object v0, v1

    goto :goto_2

    :catchall_3
    move-exception p0

    goto :goto_2

    :catchall_4
    move-exception p0

    move-object v2, v0

    .line 31
    :goto_2
    invoke-static {p1}, Lcn/mucang/android/core/utils/o;->a(Ljava/io/Closeable;)V

    .line 32
    invoke-static {v0}, Lcn/mucang/android/core/utils/o;->a(Ljava/io/Closeable;)V

    .line 33
    invoke-static {v2}, Lcn/mucang/android/core/utils/o;->a(Ljava/io/Closeable;)V

    throw p0
.end method

.method public static u(Ljava/lang/Long;ZLcn/mucang/android/jiakaoyi/engine/model/KeMu;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/mucang/android/core/api/exception/InternalException;,
            Lcn/mucang/android/core/api/exception/ApiException;,
            Lcn/mucang/android/core/api/exception/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/consts/a;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-static {}, Lcn/mucang/jiakaoyi/uilib/ui/login/j/a;->b()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->k()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/utils/l0;->a:Lcn/mucang/android/jiakaoyi/framework/utils/l0;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/l0;->a()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p0, 0x0

    .line 3
    monitor-exit v0

    return p0

    .line 4
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5f00\u59cb\u62c9\u53d6\u670d\u52a1\u7aef\u89c4\u5219\uff0cexamSiteId\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 5
    new-instance v1, Lcn/mucang/jiakaoyi/uilib/i/n;

    invoke-direct {v1, p2}, Lcn/mucang/jiakaoyi/uilib/i/n;-><init>(Lcn/mucang/android/jiakaoyi/engine/model/KeMu;)V

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcn/mucang/jiakaoyi/uilib/i/n;->n(J)Ljava/util/List;

    move-result-object v1

    if-eqz p1, :cond_1

    .line 6
    sget-object p1, Lcn/mucang/android/jiakaoyi/framework/d/b;->a:Lcn/mucang/android/jiakaoyi/framework/d/b;

    const-string v2, "\u8bb0\u5f55\u4e00\u6b21\u91cd\u7f6e\u62c9\u53d6\u670d\u52a1\u5668\u89c4\u5219\u64cd\u4f5c"

    invoke-virtual {p1, v2}, Lcn/mucang/android/jiakaoyi/framework/d/b;->m(Ljava/lang/String;)V

    .line 7
    :cond_1
    invoke-static {v1}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result p1

    const/4 v2, 0x1

    if-eqz p1, :cond_2

    const-string p0, "\u670d\u52a1\u5668\u4e2a\u4eba\u89c4\u5219\u662fnull"

    .line 8
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 9
    monitor-exit v0

    return v2

    .line 10
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u670d\u52a1\u5668\u4e2a\u4eba\u89c4\u5219\uff1a"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 11
    invoke-static {}, Lcn/mucang/jiakaoyi/uilib/ui/login/j/a;->c()Ljava/lang/String;

    move-result-object p1

    .line 12
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4, p2}, Lcn/mucang/jiakaoyi/uilib/m/b;->i(JLcn/mucang/android/jiakaoyi/engine/model/KeMu;)Ljava/util/List;

    move-result-object p2

    .line 13
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 14
    sget-object v4, Lcn/mucang/jiakaoyi/uilib/m/b;->c:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_3

    const-string v4, "\u975e\u6cd5\u521d\u59cb\u5316globalData"

    .line 15
    invoke-static {v4}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 16
    invoke-static {v5}, Lcn/mucang/jiakaoyi/uilib/m/b;->h(Lcn/mucang/android/jiakaoyi/engine/model/KeMu;)Ljava/util/List;

    .line 17
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;

    .line 18
    invoke-virtual {v4, p1}, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->setUserId(Ljava/lang/String;)V

    .line 19
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->setExamSiteId(J)V

    .line 20
    sget-object v6, Lcn/mucang/jiakaoyi/uilib/m/b;->c:Ljava/util/Map;

    invoke-virtual {v4}, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->getRuleId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;

    if-eqz v6, :cond_8

    .line 21
    invoke-virtual {v6}, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->getValueType()I

    move-result v7

    invoke-virtual {v4}, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->getValueType()I

    move-result v8

    if-eq v7, v8, :cond_5

    .line 22
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u5bf9\u6bd4\u670d\u52a1\u5668\u89c4\u5219\u7c7b\u578b\u4e0d\u4e00\u6837 ruleId:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->getRuleId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " \u6570\u636e\u5e93\u7c7b\u578b:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->getValueType()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " , \u670d\u52a1\u5668\u7c7b\u578b:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v4}, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->getValueType()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 24
    invoke-static {v7}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 25
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->v()Z

    move-result v7

    if-nez v7, :cond_4

    goto :goto_0

    .line 26
    :cond_4
    new-instance p0, Ljava/lang/Error;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "\u5bf9\u6bd4\u670d\u52a1\u5668\u89c4\u5219\u7c7b\u578b\u4e0d\u4e00\u6837 ruleId:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->getRuleId()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " \u6570\u636e\u5e93\u7c7b\u578b:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->getValueType()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " , \u670d\u52a1\u5668\u7c7b\u578b:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v4}, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->getValueType()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p0

    .line 28
    :cond_5
    invoke-virtual {v6}, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->getValueType()I

    move-result v7

    const/4 v8, 0x4

    if-ne v7, v8, :cond_7

    .line 29
    invoke-virtual {v4}, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 30
    invoke-virtual {v6}, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->getOptionList()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-lt v7, v8, :cond_6

    .line 31
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "warning---\u65b0\u7248\u672c\u7684options\u6bd4\u5f53\u524d\u7248\u672c\u591a\uff0c\u8bf7\u66f4\u65b0\u7248\u672c\u6765\u517c\u5bb9, ruleId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->getRuleId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " , \u6570\u636e\u5e93 options="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v6}, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->getOptions()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", \u670d\u52a1\u5668 options="

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v4}, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->getOptions()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 34
    invoke-static {v4}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 35
    :cond_6
    invoke-virtual {v6}, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->getOptions()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->setOptions(Ljava/lang/String;)V

    .line 36
    :cond_7
    invoke-virtual {v6}, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->getLevel()I

    move-result v6

    invoke-virtual {v4, v6}, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->setLevel(I)V

    .line 37
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 38
    :cond_8
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u670d\u52a1\u5668\u5305\u542b\u4e86\u672c\u5730\u6ca1\u6709\u7684\u89c4\u5219:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->getRuleId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    goto/16 :goto_0

    .line 39
    :cond_9
    :try_start_1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/f/a;->b()Landroid/database/sqlite/SQLiteOpenHelper;

    move-result-object p0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    .line 40
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 41
    invoke-static {p2, v5}, Lcn/mucang/jiakaoyi/uilib/m/b;->d(Ljava/util/List;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 42
    invoke-static {v3, v5}, Lcn/mucang/jiakaoyi/uilib/m/b;->m(Ljava/util/List;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 43
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    :try_start_2
    invoke-static {v5}, Lcn/mucang/jiakaoyi/uilib/m/b;->e(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 45
    :goto_1
    invoke-static {v5}, Lcn/mucang/android/core/utils/j;->c(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_0
    move-exception p0

    .line 46
    :try_start_3
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    .line 47
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u540c\u6b65\u89c4\u5219\u62a5\u9519\uff1a---------\n"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 48
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "syncMyData error : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    const-string p1, "RuleConfigDataManager"

    .line 49
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u6570\u636e\u589e\u91cf\u66f4\u65b0\u5931\u8d25:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcn/mucang/android/core/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 50
    :try_start_4
    invoke-static {v5}, Lcn/mucang/jiakaoyi/uilib/m/b;->e(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_1

    .line 51
    :goto_2
    monitor-exit v0

    return v2

    :catchall_1
    move-exception p0

    .line 52
    invoke-static {v5}, Lcn/mucang/jiakaoyi/uilib/m/b;->e(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 53
    invoke-static {v5}, Lcn/mucang/android/core/utils/j;->c(Landroid/database/sqlite/SQLiteDatabase;)V

    throw p0

    :catchall_2
    move-exception p0

    .line 54
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p0
.end method

.method private static v(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;",
            ">;)",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/consts/a;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-static {p0}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x0

    .line 3
    monitor-exit v0

    return-object p0

    .line 4
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;

    .line 6
    invoke-virtual {v2}, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->transform()Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 7
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_2
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static w(Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;J)Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;
    .locals 11

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/consts/a;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-static {}, Lcn/mucang/jiakaoyi/uilib/ui/login/j/a;->b()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->k()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/utils/l0;->a:Lcn/mucang/android/jiakaoyi/framework/utils/l0;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/l0;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    monitor-exit v0

    return-object v2

    .line 4
    :cond_0
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/f/a;->a()Lcn/mucang/android/core/db/a;

    move-result-object v1

    .line 5
    invoke-static {}, Lcn/mucang/jiakaoyi/uilib/ui/login/j/a;->c()Ljava/lang/String;

    move-result-object v3

    .line 6
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->k()Z

    move-result v4

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-nez v4, :cond_4

    sget-object v4, Lcn/mucang/android/jiakaoyi/framework/utils/l0;->a:Lcn/mucang/android/jiakaoyi/framework/utils/l0;

    invoke-virtual {v4}, Lcn/mucang/android/jiakaoyi/framework/utils/l0;->a()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 7
    :cond_1
    invoke-static {v3}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 8
    monitor-exit v0

    return-object v2

    .line 9
    :cond_2
    const-class v4, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;

    const-string v8, "select * from t_rule_config where rule_id=? and exam_site_id=? and user_id=? order by position"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/String;

    .line 10
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->getRuleId()I

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v6

    .line 11
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v7

    aput-object v3, v9, v5

    .line 12
    invoke-static {v8, v9}, Lcn/mucang/android/core/db/e;->d(Ljava/lang/String;[Ljava/lang/String;)Lcn/mucang/android/core/db/e;

    move-result-object v5

    .line 13
    invoke-virtual {v1, v4, v5}, Lcn/mucang/android/core/db/a;->y(Ljava/lang/Class;Lcn/mucang/android/core/db/e;)Ljava/util/List;

    move-result-object v4

    .line 14
    invoke-static {v4}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_2

    .line 15
    :cond_3
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v7

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;

    .line 16
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v7

    if-ge v6, v5, :cond_5

    .line 17
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;

    .line 18
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v5}, Lcn/mucang/android/core/db/IdEntity;->getId()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-virtual {v1, v8, v9, v10}, Lcn/mucang/android/core/db/a;->h(Ljava/lang/Class;J)I

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 19
    :cond_4
    :goto_1
    const-class v2, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;

    const-string v4, "select * from t_rule_config where rule_id=? and exam_site_id=? order by position"

    new-array v5, v5, [Ljava/lang/String;

    .line 20
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->getRuleId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v6

    .line 21
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    .line 22
    invoke-static {v4, v5}, Lcn/mucang/android/core/db/e;->d(Ljava/lang/String;[Ljava/lang/String;)Lcn/mucang/android/core/db/e;

    move-result-object v4

    .line 23
    invoke-virtual {v1, v2, v4}, Lcn/mucang/android/core/db/a;->n(Ljava/lang/Class;Lcn/mucang/android/core/db/e;)Lcn/mucang/android/core/db/IdEntity;

    move-result-object v2

    check-cast v2, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;

    :cond_5
    :goto_2
    if-nez v2, :cond_6

    .line 24
    new-instance v2, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;

    invoke-direct {v2}, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;-><init>()V

    .line 25
    invoke-virtual {v2, p0, v7}, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->copy(Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;Z)V

    goto :goto_3

    .line 26
    :cond_6
    invoke-virtual {v2, p0}, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->copy(Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;)V

    .line 27
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->getOptions()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->setOptions(Ljava/lang/String;)V

    .line 28
    :goto_3
    invoke-virtual {v2, p1, p2}, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->setExamSiteId(J)V

    .line 29
    invoke-virtual {v2, v7}, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->setHadSetByUser(Z)V

    .line 30
    invoke-virtual {v2, v3}, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->setUserId(Ljava/lang/String;)V

    .line 31
    invoke-virtual {v1, v2}, Lcn/mucang/android/core/db/a;->w(Lcn/mucang/android/core/db/IdEntity;)V

    .line 32
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p0

    .line 33
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static x(Lcn/mucang/android/jiakaoyi/engine/model/KeMu;)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/engine/model/KeMu;->dir:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_Rule_Config_Version_Id"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static y(Ljava/util/List;J)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;",
            ">;J)",
            "Ljava/util/List<",
            "Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    invoke-static {}, Lcn/mucang/jiakaoyi/uilib/ui/login/j/a;->c()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;

    .line 4
    invoke-virtual {v2, v0}, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->setUserId(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v2, p1, p2}, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->setExamSiteId(J)V

    goto :goto_0

    :cond_1
    return-object p0
.end method
