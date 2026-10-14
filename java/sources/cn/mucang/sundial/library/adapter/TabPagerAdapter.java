package cn.mucang.sundial.library.adapter;

import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.s;
import cn.mucang.sundial.library.entity.TabEntity;
import cn.mucang.sundial.library.fragment.BaseFragment;
import cn.mucang.sundial.library.fragment.CarStatusFragment;
import cn.mucang.sundial.library.fragment.PhotoRecordFragment;
import cn.mucang.sundial.library.fragment.TrainingInfoFragment;
import cn.mucang.sundial.library.fragment.TrainingProgressFragment;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.u;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\r\n\u0002\b\u0004\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0018\u001a\u00020\u0017¢\u0006\u0004\b\u0019\u0010\u001aJ\u001d\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u0006\u0010\u0007J\u0017\u0010\b\u001a\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\b\u0010\tJ\u0017\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\r\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\r\u0010\u000eJ\u0017\u0010\u0011\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0011\u0010\u0012R\"\u0010\u0015\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00140\u00040\u00138\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016¨\u0006\u001b"}, d2 = {"Lcn/mucang/sundial/library/adapter/TabPagerAdapter;", "Landroidx/fragment/app/s;", "", "position", "Lcn/mucang/sundial/library/entity/TabEntity;", "Landroidx/fragment/app/Fragment;", "getItemData", "(I)Lcn/mucang/sundial/library/entity/TabEntity;", "getItem", "(I)Landroidx/fragment/app/Fragment;", "", "getPageTitle", "(I)Ljava/lang/CharSequence;", "getCount", "()I", "", "object", "getItemPosition", "(Ljava/lang/Object;)I", "", "Lcn/mucang/sundial/library/fragment/BaseFragment;", "itemList", "Ljava/util/List;", "Landroidx/fragment/app/FragmentManager;", "fm", "<init>", "(Landroidx/fragment/app/FragmentManager;)V", "library_release"}, k = 1, mv = {1, 1, 15})
public final class TabPagerAdapter extends s {
    private final List<TabEntity<BaseFragment>> itemList;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TabPagerAdapter(FragmentManager fm) {
        super(fm, 1);
        r.e(fm, "fm");
        this.itemList = u.p(new TabEntity("培训信息", TrainingInfoFragment.class), new TabEntity("培训进度", TrainingProgressFragment.class), new TabEntity("抓拍记录", PhotoRecordFragment.class), new TabEntity("车辆状态", CarStatusFragment.class));
    }

    private final TabEntity<Fragment> getItemData(int position) {
        return this.itemList.get(position);
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public int getCount() {
        return this.itemList.size();
    }

    @Override // androidx.fragment.app.s
    public Fragment getItem(int position) throws IllegalAccessException, InstantiationException {
        Object objNewInstance = getItemData(position).getPage().newInstance();
        r.d(objNewInstance, "data.page.newInstance()");
        return (Fragment) objNewInstance;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public int getItemPosition(Object object) {
        r.e(object, "object");
        return -2;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public CharSequence getPageTitle(int position) {
        return this.itemList.get(position).getLabel();
    }
}
