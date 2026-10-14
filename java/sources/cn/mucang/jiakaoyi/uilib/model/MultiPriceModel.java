package cn.mucang.jiakaoyi.uilib.model;

import java.io.Serializable;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class MultiPriceModel implements Serializable {
    public List<PriceInfo> circlePriceItems;
    public long maxCircleTime;
    public List<PriceInfo> studyHourPriceItems;

    public static class PriceInfo implements Serializable {
        public long id;
        public String name;
        public double price;
    }

    public List<PriceInfo> getCirclePrices() {
        return this.circlePriceItems;
    }

    public List<PriceInfo> getHourPrices() {
        return this.studyHourPriceItems;
    }
}
